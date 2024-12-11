<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>City Feedback</title>
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
  <style>
    * {
      box-sizing: border-box;
      
      
      
      
      
    }

    body, html {
      background: url('https://www.city-data.com/images/city-skyline.jpg') no-repeat center center fixed;
      background-size: cover;
      font-family: 'Montserrat', Arial, sans-serif;
      height: 100%;
      margin: 0;
      padding: 0;
      animation: backgroundAnimation 30s infinite linear;
    }

    @keyframes backgroundAnimation {
      0% {
        background-position: center top;
      }
      100% {
        background-position: center bottom;
      }
    }

    #feedback-page {
      text-align: center;
      padding: 20px;
    }

    #form-main {
      width: 100%;
      padding-top: 50px;
    }

    #form-div {
      background-color: rgba(72, 72, 72, 0.8);
      padding: 35px;
      width: 450px;
      margin: 60px auto;
      border-radius: 7px;
      animation: fadeIn 2s ease;
    }

    @keyframes fadeIn {
      from {
        opacity: 0;
        transform: translateY(-50px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    .feedback-input {
      width: 100%;
      padding: 15px;
      margin-bottom: 15px;
      font-size: 18px;
      border: 3px solid transparent;
      border-radius: 5px;
      background: rgba(255, 255, 255, 0.8);
      transition: 0.3s ease-in-out;
    }

    .feedback-input:focus {
      border: 3px solid #3498db;
      background: #fff;
      outline: none;
      transform: scale(1.02);
    }

    #get-location {
      width: 100%;
      padding: 15px;
      margin-bottom: 15px;
      font-size: 18px;
      font-weight: bold;
      color: white;
      background: #3498db;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      transition: all 0.3s ease;
    }

    #get-location:hover {
      background: #2980b9;
      transform: scale(1.05);
    }

    #city-name {
      margin-top: -10px;
      font-size: 14px;
      color: white;
    }

    textarea {
      height: 150px;
      resize: none;
    }

    #submit-button {
      width: 100%;
      padding: 15px;
      font-size: 18px;
      font-weight: bold;
      color: white;
      background: #3498db;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      transition: all 0.3s ease;
    }

    #submit-button:hover {
      background: #2980b9;
      transform: scale(1.05);
    }

    .rating {
      display: flex;
      justify-content: center;
      margin: 15px 0;
    }

    .rating label {
      font-size: 30px;
      color: lightgray;
      cursor: pointer;
      transition: color 0.3s ease;
    }

    .rating input {
      display: none;
    }

    .rating input:checked ~ label {
      color: #f1c40f;
    }

    .rating input:checked ~ label ~ label {
      color: lightgray;
    }

    .rating label:hover,
    .rating label:hover ~ label {
      color: #f1c40f;
    }

    @media only screen and (max-width: 580px) {
      #form-div {
        width: 88%;
        padding: 25px;
      }
    }
  </style>
</head>
<body>

<div id="feedback-page">
  <div id="form-main">
    <div id="form-div">
      <form id="feedback-form">
        
        <input type="text" class="feedback-input" id="location" placeholder="Your Location" required>
        <button type="button" id="get-location">Get Location</button>
        <div id="city-name"></div>
        
        <textarea class="feedback-input" id="feedback" placeholder="Your Feedback about the City" required></textarea>

        <div class="rating">
          <input type="radio" name="rating" id="star1" value="1" required>
          <label for="star1">&#9733;</label>

          <input type="radio" name="rating" id="star2" value="2">
          <label for="star2">&#9733;</label>

          <input type="radio" name="rating" id="star3" value="3">
          <label for="star3">&#9733;</label>

          <input type="radio" name="rating" id="star4" value="4">
          <label for="star4">&#9733;</label>

          <input type="radio" name="rating" id="star5" value="5">
          <label for="star5">&#9733;</label>
        </div>

        <button type="submit" id="submit-button">Submit Feedback</button>
      </form>
    </div>
  </div>
</div>

<script>
  document.getElementById("get-location").addEventListener("click", function() {
    if ("geolocation" in navigator) {
      navigator.geolocation.getCurrentPosition(function(position) {
        const latitude = position.coords.latitude;
        const longitude = position.coords.longitude;

        fetch(`https://geocode.maps.co/reverse?lat=${latitude}&lon=${longitude}`)
          .then(response => response.json())
          .then(data => {
            document.getElementById("location").value = data.address.city || data.address.town || "Unknown Location";
            document.getElementById("city-name").innerText = `Detected Location: ${data.address.city || data.address.town || "Unknown"}`;
          })
          .catch(() => {
            document.getElementById("city-name").innerText = "Unable to fetch location.";
          });
      }, () => {
        document.getElementById("city-name").innerText = "Permission denied.";
      });
    } else {
      document.getElementById("city-name").innerText = "Geolocation not supported.";
    }
  });
</script>

</body>
</html>
