<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="ionic.example">
  <head>
    <meta charset="utf-8">
    <title>Map</title>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no, width=device-width">
    
    <link href="//code.ionicframework.com/nightly/css/ionic.css" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css" />
    <script src="//code.ionicframework.com/nightly/js/ionic.bundle.js"></script>
    <script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>
  </head>
  <body ng-controller="MapCtrl">
    <!-- Header -->
    <ion-header-bar class="bar-dark">
      <h1 class="title">Map</h1>
      <div class="search-bar">
        <input type="text" ng-model="searchQuery" placeholder="Enter city">
        <button ng-click="searchLocation()">
          <i class="ion-ios-search-strong"></i>
        </button>
      </div>
    </ion-header-bar>

    <!-- Main Content with Sidebar and Map -->
    <ion-content>
      <div class="container">
        <!-- Left Sidebar -->
        <div class="sidebar">
          <h3>Categories</h3>
          <button ng-click="searchPlaces('restaurants')">Restaurants</button>
          <button ng-click="searchPlaces('hotels')">Hotels</button>
          <button ng-click="searchPlaces('malls')">Malls</button>
          <button ng-click="searchPlaces('railway station')">Railway Stations</button>
          <button ng-click="searchPlaces('bus station')">Bus Stations</button>
          <button ng-click="searchPlaces('bus stop')">Bus Stops</button>
        </div>

        <!-- Map -->
        <div id="map" data-tap-disabled="true"></div>
      </div>
    </ion-content>

    <!-- Footer -->
    <ion-footer-bar class="bar-dark">
      <a ng-click="centerOnMe()" class="button button-icon icon ion-navigate">Find Me</a>
    </ion-footer-bar>

    <style>
      .container {
        display: flex;
        height: 100vh;
      }

      /* Sidebar */
      .sidebar {
        width: 250px;
        background-color: #2c3e50;
        color: white;
        padding: 15px;
        display: flex;
        flex-direction: column;
        justify-content: start;
      }

      .sidebar h3 {
        color: #1abc9c;
      }

      .sidebar button {
        background-color: #34495e;
        border: none;
        color: white;
        padding: 15px;
        margin: 5px 0;
        cursor: pointer;
        font-size: 16px;
      }

      .sidebar button:hover {
        background-color: #1abc9c;
      }

      #map {
        flex: 1;
        height: 100vh;
      }

      .scroll {
        height: 100%;
      }

      .search-bar {
        display: flex;
        align-items: center;
        margin: 0 10px;
      }

      .search-bar input {
        flex: 1;
        padding: 5px;
        margin-right: 5px;
      }

      .search-bar button {
        padding: 5px;
        background: none;
        border: none;
        color: white;
      }

      .search-bar button i {
        font-size: 20px;
      }
    </style>

    <script>
      angular.module('ionic.example', ['ionic'])
        .controller('MapCtrl', function($scope, $ionicLoading, $compile, $http) {
          var markers = [];
          
          function initialize() {
            var myLatlng = [43.07493, -89.381388];
            
            var map = L.map('map').setView(myLatlng, 16);

            L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
              attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
            }).addTo(map);

            $scope.map = map;
          }
          initialize();

          // Function to clear old markers
          function clearMarkers() {
            markers.forEach(function(marker) {
              $scope.map.removeLayer(marker);
            });
            markers = [];
          }

          // Search for a city and center the map
          $scope.searchLocation = function() {
            if (!$scope.searchQuery) {
              return;
            }

            var searchUrl = 'https://nominatim.openstreetmap.org/search?format=json&q=' + encodeURIComponent($scope.searchQuery);

            $http.get(searchUrl).then(function(response) {
              if (response.data.length > 0) {
                var location = response.data[0];
                var latlng = [location.lat, location.lon];
                $scope.map.setView(latlng, 16);

                var marker = L.marker(latlng).addTo($scope.map)
                  .bindPopup("City: " + location.display_name)
                  .openPopup();

                clearMarkers(); // Clear previous markers
                markers.push(marker);
              } else {
                alert('City not found');
              }
            }, function(error) {
              alert('Error searching city: ' + error.message);
            });
          };

          // Search for places within the city
          $scope.searchPlaces = function(type) {
            if (!$scope.searchQuery) {
              alert('Please enter a city first.');
              return;
            }

            var placeQuery = type + ' in ' + $scope.searchQuery;
            var placeSearchUrl = 'https://nominatim.openstreetmap.org/search?format=json&q=' + encodeURIComponent(placeQuery);

            // Clear old markers before placing new ones
            clearMarkers();

            // Fetch places and display markers on the map
            $http.get(placeSearchUrl).then(function(response) {
              if (response.data.length > 0) {
                response.data.forEach(function(location) {
                  var latlng = [location.lat, location.lon];
                  var marker = L.marker(latlng).addTo($scope.map)
                    .bindPopup(type.charAt(0).toUpperCase() + type.slice(1) + ": " + location.display_name)
                    .openPopup();
                  markers.push(marker);
                });
              } else {
                alert('No ' + type + ' found in ' + $scope.searchQuery);
              }
            }, function(error) {
              alert('Error searching places: ' + error.message);
            });
          };

          $scope.centerOnMe = function() {
            if (!$scope.map) {
              return;
            }

            $scope.loading = $ionicLoading.show({
              content: 'Getting current location...',
              showBackdrop: false
            });

            navigator.geolocation.getCurrentPosition(function(pos) {
              var newLatLng = [pos.coords.latitude, pos.coords.longitude];
              $scope.map.setView(newLatLng, 16);

              var marker = L.marker(newLatLng).addTo($scope.map)
                .bindPopup('You are here!')
                .openPopup();
              markers.push(marker);

              $scope.loading.hide();
            }, function(error) {
              alert('Unable to get location: ' + error.message);
            });
          };
        });
    </script>
  </body>
</html>