<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Smart City Admin Dashboard</title>
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.3/dist/leaflet.css" />
    <style>
      
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: Arial, sans-serif;
    }
    body {
        display: flex;
        height: 100vh;
        background: #f4f4f4;
    }
    .sidebar {
        width: 250px;
        background: #34495e;
        color: white;
        padding: 20px;
        position: fixed;
        height: 100%;
    }
    .sidebar h2 {
        text-align: center;
        margin-bottom: 30px;
        font-size: 24px;
        color: #e74c3c;
    }
    .sidebar ul {
        list-style: none;
        padding: 0;
    }
    .sidebar ul li {
        margin: 15px 0;
        text-align: center;
    }
    .animated-button {
        position: relative;
        display: inline-block;
        padding: 12px 24px;
        border: none;
        font-size: 16px;
        background-color: inherit;
        border-radius: 100px;
        font-weight: 600;
        color: #ffffff40;
        box-shadow: 0 0 0 2px #ffffff20;
        cursor: pointer;
        overflow: hidden;
        transition: all 0.6s cubic-bezier(0.23, 1, 0.32, 1);
        width: 180px;
        text-align: left;
    }
    .animated-button:hover {
        box-shadow: 0 0 0 5px #2195f360;
        color: #ffffff;
    }
    .animated-button span:first-child {
        position: relative;
        z-index: 1;
    }
    .main-content {
    margin-left: 250px;
    width: calc(100% - 250px);
    padding: 20px;
    display: flex;
    flex-direction: column;
    align-items: flex-start;
}

header h1 {
    color: #34495e;
    margin-bottom: 10px; /* Reduce spacing after header */
    font-size: 28px;
}

.cards {
    display: flex;
    flex-wrap: wrap;
    gap: 20px; /* Less gap between cards */
    margin-top: 0; /* Remove margin causing downward shift */
}

.card {
    background: white;
    padding: 25px;
    border-radius: 10px;
    width: 300px;
    text-align: center;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

    .card:hover {
        transform: translateY(-5px);
        box-shadow: 0 6px 16px rgba(0, 0, 0, 0.2);
    }
    .clock-card, .map-card {
        width: 400px;
        height: 400px;
        background: linear-gradient(to right, rgb(20, 30, 48), rgb(36, 59, 85));
        border-radius: 15px;
        box-shadow: rgba(0, 0, 0, 0.7) 5px 10px 50px, rgba(0, 0, 0, 0.7) -5px 0px 250px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        
        color: white;
        
        right: 20px;
    }
    .map-card {
        top: 440px;
    }
    .clock-card {
        top: 0;
    }
    #map {
        width: 100%;
        height: 100%;
        border-radius: 15px;
    }
    .map-title {
        
        top: 100px;
        left: 10px;
        background: rgba(0, 0, 0, 0.6);
        color: white;
        padding: 5px 10px;
        border-radius: 5px;
        font-size: 14px;
        font-weight: bold;
    }
    .animated-button {
    position: relative;
    display: inline-block;
    padding: 12px 24px;
    border: none;
    font-size: 16px;
    background: transparent;
    color: #ffffff40;
    border-radius: 50px;
    font-weight: 600;
    width: 180px;
    text-align: left;
    cursor: pointer;
    overflow: hidden;
    transition: all 0.6s ease-in-out;
}

.animated-button:hover {
    color: #fff;
    background: #e74c3c;
    box-shadow: 0 0 10px #e74c3c, 0 0 40px #e74c3c, 0 0 80px #e74c3c;
}

.animated-button::before {
    content: "";
    position: absolute;
    top: 0;
    left: -100%;
    width: 100%;
    height: 100%;
    background: rgba(255, 255, 255, 0.2);
    transition: left 0.5s ease-in-out;
}

.animated-button:hover::before {
    left: 0;
}

.animated-button span:first-child {
    position: relative;
    z-index: 1;
}
.cards {
    display: flex;
    flex-wrap: wrap;
    gap: 30px;
}

.card {
    flex: 1;
    min-width: 200px;
    max-width: 300px;
    background: white;
    padding: 25px;
    border-radius: 10px;
    text-align: center;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.card:hover {
    transform: translateY(-5px);
    box-shadow: 0 6px 16px rgba(0, 0, 0, 0.2);
}
/* Layout Settings */
body {
    display: flex;
    height: 100vh;
    background: #f4f4f4;
}

.sidebar, .right-sidebar {
    width: 250px;
    background: #34495e;
    color: white;
    padding: 20px;
    height: 100%;
}

.main-content {
    flex: 1;
    padding: 40px;
    display: flex;
    flex-direction: column;
}

.right-sidebar {
    display: flex;
    flex-direction: column;
    gap: 30px;
    align-items: center;
}

/* Center Cards */
.cards {
    display: flex;
    flex-wrap: wrap;
    gap: 30px;
    margin-top: 20px;
}

.card {
    background: white;
    padding: 25px;
    border-radius: 10px;
    width: 300px;
    text-align: center;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.card:hover {
    transform: translateY(-5px);
    box-shadow: 0 6px 16px rgba(0, 0, 0, 0.2);
}

/* Clock & Map Cards */
.clock-card, .map-card {
    width: 220px;
    height: 220px;
    background: linear-gradient(to right, rgb(20, 30, 48), rgb(36, 59, 85));
    border-radius: 15px;
    box-shadow: rgba(0, 0, 0, 0.7) 5px 10px 50px, rgba(0, 0, 0, 0.7) -5px 0px 250px;
    color: white;
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
}

#map {
    width: 100%;
    height: 100%;
    border-radius: 15px;
}


    
</style>

</head>
<body>

<div class="sidebar">
    <h2>Admin Dashboard</h2>
    <ul>
        <li><button class="animated-button"><span>Dashboard</span><span></span></button></li>
        <li><button class="animated-button"><span>Manage Users</span></button></li>
        <li><button class="animated-button"><span>Public Services</span></button></li>
        <li><button class="animated-button"><span>Reports</span></button></li>
        <li><button class="animated-button"><span>Settings</span></button></li>
        <li><a href="Home.jsp"><button class="animated-button"><span>Logout</span></button></a></li>
    </ul>
</div>

<div class="main-content">
    <header>
        <h1>Welcome, Admin!</h1>
    </header>
    <section class="cards">
        <div class="card">
            <h3>Total Customers : <c:out value="${count}"></c:out></h3>
           
        </div>
        <div class="card">
            <h3>Feedbacks</h3>
            <p id="feedbacksCount">0</p>
        </div>
    </section>
</div>

<div class="right-sidebar">
    <div class="clock-card">
        <p class="time-text" id="current-time"></p>
        <p class="day-text" id="current-day"></p>
    </div>
    <div class="map-card">
        <div id="map"></div>
    </div>
</div>


<script src="https://unpkg.com/leaflet@1.9.3/dist/leaflet.js"></script>
<script>
function updateClock() {
    const now = new Date();
    const timeString = now.toLocaleTimeString();
    const dateString = now.toLocaleDateString('en-US', { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' });

    document.getElementById('current-time').innerText = timeString;
    document.getElementById('current-day').innerText = dateString;
}
setInterval(updateClock, 1000);
updateClock();

const map = L.map('map').setView([0, 0], 15);
L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png').addTo(map);
navigator.geolocation.getCurrentPosition(position => {
    const { latitude, longitude } = position.coords;
    L.marker([latitude, longitude]).addTo(map).bindPopup('Your Location!').openPopup();
    map.setView([latitude, longitude]);
});
</script>
</body>
</html>
