<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" ng-app="categoryMapApp">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Category-Based Map</title>
    <script src="https://code.angularjs.org/1.8.2/angular.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.9.4/leaflet.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/leaflet-routing-machine/3.2.12/leaflet-routing-machine.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.9.4/leaflet.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        #map {
            height: 70vh;
            width: 100%;
        }
        .controls {
            padding: 10px;
            background: #f9f9f9;
        }
        .controls input, .controls select, .controls button {
            margin: 5px 0;
            padding: 8px;
            width: 100%;
            max-width: 300px;
        }
        #distanceText {
            font-weight: bold;
            margin-top: 10px;
        }
        #loading {
            display: none;
            color: #007bff;
        }
    </style>
</head>
<body ng-controller="CategoryMapController">

<div class="controls">
    <h2>Category-Based Map</h2>
    <input type="text" ng-model="searchQuery" placeholder="Enter a city name">
    <button ng-click="searchCity()">Search City</button>

    <select ng-model="selectedCategory">
        <option value="" disabled selected>Select a category</option>
        <option value="housing">Smart Housing (Prestige, Sobha, Brigade)</option>
        <option value="retail">Retail & Shopping (Flipkart, Amazon)</option>
    </select>
    <button ng-click="loadPlaces()">Find Places</button>

    <div id="loading">Loading...</div>
</div>

<div id="map"></div>
<div id="distanceText"></div>

<script>
    var app = angular.module('categoryMapApp', []);

    app.controller('CategoryMapController', function($scope, $http) {
        var map = L.map('map').setView([20.5937, 78.9629], 5);  // Default to India

        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
        }).addTo(map);

        var markers = [];
        var userLocationMarker = null;
        var userLat = null;
        var userLon = null;
        var routingControl = null;

        function showLoading() {
            document.getElementById('loading').style.display = 'inline';
        }

        function hideLoading() {
            document.getElementById('loading').style.display = 'none';
        }

        function clearMarkers() {
            markers.forEach(function(marker) {
                map.removeLayer(marker);
            });
            markers = [];
        }

        $scope.searchCity = function() {
            var city = $scope.searchQuery;
            if (!city) {
                alert('Please enter a city name');
                return;
            }

            showLoading();
            var searchUrl = `https://nominatim.openstreetmap.org/search?city=${city}&format=json`;

            $http.get(searchUrl).then(function(response) {
                hideLoading();
                if (response.data.length > 0) {
                    var location = response.data[0];
                    var lat = location.lat;
                    var lon = location.lon;

                    map.setView([lat, lon], 12);
                    L.marker([lat, lon]).addTo(map)
                        .bindPopup('<b>' + city + '</b>')
                        .openPopup();
                } else {
                    alert('City not found');
                }
            }, function(error) {
                hideLoading();
                alert('Error searching city: ' + error.message);
            });
        };

        $scope.loadPlaces = function() {
            if (!$scope.selectedCategory || !$scope.searchQuery) {
                alert('Please select a category and enter a city');
                return;
            }

            showLoading();
            var category = $scope.selectedCategory;
            var city = $scope.searchQuery;

            var citySearchUrl = `https://nominatim.openstreetmap.org/search?city=${city}&format=json`;

            $http.get(citySearchUrl).then(function(response) {
                hideLoading();
                if (response.data.length > 0) {
                    var location = response.data[0];
                    var lat = location.lat;
                    var lon = location.lon;

                    var overpassUrl = '';
                    if (category === 'housing') {
                        overpassUrl = `https://overpass-api.de/api/interpreter?data=[out:json];node["building"="residential"](around:5000,${lat},${lon});out;`;
                    } else if (category === 'retail') {
                        overpassUrl = `https://overpass-api.de/api/interpreter?data=[out:json];node["shop"](around:5000,${lat},${lon});out;`;
                    }

                    $http.get(overpassUrl).then(function(response) {
                        clearMarkers();

                        if (response.data.elements && response.data.elements.length > 0) {
                            response.data.elements.forEach(function(place) {
                                var placeLatLng = [place.lat, place.lon];
                                var marker = L.marker(placeLatLng).addTo(map)
                                    .bindPopup('<b>' + (place.tags.name || 'Unnamed') + '</b>');

                                markers.push(marker);

                                marker.on('click', function() {
                                    if (userLat && userLon) {
                                        if (routingControl) {
                                            map.removeControl(routingControl);
                                        }

                                        routingControl = L.Routing.control({
                                            waypoints: [
                                                L.latLng(userLat, userLon),
                                                L.latLng(placeLatLng)
                                            ],
                                            routeWhileDragging: true
                                        }).on('routesfound', function(e) {
                                            var distance = e.routes[0].summary.totalDistance / 1000;
                                            document.getElementById('distanceText').textContent = `Distance: ${distance.toFixed(2)} km`;
                                        }).addTo(map);
                                    } else {
                                        alert('User location not available');
                                    }
                                });
                            });
                        } else {
                            alert('No results found for ' + category + ' in ' + city);
                        }
                    }, function(error) {
                        alert('Error searching places: ' + error.message);
                    });
                } else {
                    alert('City not found');
                }
            });
        };

        function getUserLocation() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function(position) {
                    userLat = position.coords.latitude;
                    userLon = position.coords.longitude;

                    if (!userLocationMarker) {
                        userLocationMarker = L.marker([userLat, userLon]).addTo(map);
                    }

                    userLocationMarker.setLatLng([userLat, userLon]);
                    map.setView([userLat, userLon], 12);
                });
            } else {
                alert("Geolocation is not supported by this browser.");
            }
        }

        getUserLocation();
    });
</script>

</body>
</html>
