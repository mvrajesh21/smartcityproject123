<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Smart City Pricing</title>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
  <style>
    body {
  font-family: 'Montserrat', sans-serif;
  margin: 0;
  padding: 0;
  background: linear-gradient(135deg, #a8e063 0%, #56ab2f 100%); /* Light green gradient */
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  overflow: hidden;
}


    .container {
      width: 900px;
      height: 600px;
      display: flex;
      position: relative;
      background: #ffffff;
      border-radius: 15px;
      box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.1);
      overflow: hidden;
    }

    .panel {
      width: 100%;
      height: 100%;
      position: absolute;
      top: 0;
      transition: transform 0.6s ease-in-out;
    }

    .panel.normal {
      left: 0;
      background: #ffffff;
      z-index: 2;
    }

    .panel.premium {
      left: 100%;
      background: linear-gradient(to right, #ff416c, #ff4b2b);
      color: #ffffff;
      z-index: 1;
    }

    .container.active .panel.normal {
      transform: translateX(-100%);
    }

    .container.active .panel.premium {
      transform: translateX(-100%);
    }

    h1 {
      font-size: 2rem;
      margin-bottom: 15px;
    }

    h2 {
      font-size: 1.8rem;
      margin-bottom: 20px;
      color: inherit;
    }

    p {
      font-size: 1rem;
      margin-bottom: 20px;
      color: inherit;
    }

    ul {
      list-style-type: none;
      padding: 0;
      margin: 0 0 20px;
    }

    li {
      margin: 10px 0;
      font-size: 1rem;
    }

    button {
      padding: 10px 20px;
      border: none;
      border-radius: 25px;
      cursor: pointer;
      font-weight: bold;
      background: #ff4b2b;
      color: white;
      transition: background-color 0.3s ease-in-out;
    }

    button:hover {
      background-color: #ff6f61;
    }

    button.white {
      background: #ffffff;
      color: #ff4b2b;
      border: 1px solid #ff4b2b;
    }

    button.white:hover {
      background: #ff4b2b;
      color: #ffffff;
    }

    footer {
      margin-top: 20px;
      text-align: center;
      font-size: 0.9rem;
    }

    footer a {
      color: #ff4b2b;
      text-decoration: none;
    }

    footer a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <div class="container" id="container">
    <!-- Normal Plan Section -->
    <div class="panel normal">
      <h1>Normal Plan</h1>
      <h2>Free</h2>
      <p>Basic features for city users</p>
      <ul>
        <li>Basic transport schedules</li>
        <li>City event notifications</li>
        <li>View-only maps</li>
      </ul>
      <button id="goPremium">Switch to Premium</button>
    </div>

    <!-- Premium Plan Section -->
    <div class="panel premium">
      <h1>Premium Plan</h1>
      <h2>₹250</h2>
      <p>Exclusive features for advanced users</p>
      <ul>
        <li>All Normal Plan features</li>
        <li>Real-time transport updates</li>
        <li>Priority emergency support</li>
        <li>Offline maps</li>
        <li>Access to premium events</li>
      </ul>
      <button id="goNormal" class="white">Switch to Normal</button>
      <!-- Pay Now Button -->
      <a href="Payment.jsp" target="_blank">
        <button class="white">Pay Now</button>
      </a>
    </div>
  </div>

  <footer>
    <p>
      - Return to the <a href="Home.jsp" target="_blank">Home Page</a>
    </p>
  </footer>

  <script>
    const container = document.getElementById('container');
    const goPremium = document.getElementById('goPremium');
    const goNormal = document.getElementById('goNormal');

    goPremium.addEventListener('click', () => {
      container.classList.add('active');
    });

    goNormal.addEventListener('click', () => {
      container.classList.remove('active');
    });
  </script>
</body>
</html>
    