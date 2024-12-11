<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        /* Reset and Font */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        /* Body Background Animation */
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(135deg, #a8e063, #56ab2f);
            overflow: hidden;
        }

        /* Animated Background */
        .background {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url("https://img.freepik.com/free-vector/abstract-hexagonal-technology-background_79603-1507.jpg");
            opacity: 0.1;
            animation: moveBackground 30s linear infinite;
        }

        @keyframes moveBackground {
            0% { background-position: 0 0; }
            100% { background-position: 100% 100%; }
        }

        /* Container Styling */
        .login-container {
            position: relative;
            width: 420px;
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 128, 0, 0.2);
            text-align: center;
            animation: fadeIn 1.5s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: scale(0.9); }
            to { opacity: 1; transform: scale(1); }
        }

        .login-container h2 {
            font-size: 26px;
            font-weight: 600;
            color: #2e7d32;
            margin-bottom: 15px;
            animation: slideIn 1s ease-in-out;
        }

        @keyframes slideIn {
            from { transform: translateY(-50px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        .login-container p {
            font-size: 14px;
            color: #757575;
            margin-bottom: 25px;
        }

        /* Input Animation */
        .input-group {
            position: relative;
            margin-bottom: 20px;
            animation: bounceIn 1s ease-in-out;
        }

        @keyframes bounceIn {
            0% { transform: scale(0.9); opacity: 0; }
            60% { transform: scale(1.1); opacity: 1; }
            100% { transform: scale(1); }
        }

        .input-group input {
            width: 100%;
            padding: 12px 40px;
            font-size: 14px;
            border: 2px solid #a5d6a7;
            border-radius: 5px;
            outline: none;
            color: #424242;
            transition: all 0.3s ease;
        }

        .input-group input:focus {
            border-color: #4caf50;
            box-shadow: 0 0 8px rgba(76, 175, 80, 0.6);
        }

        .input-group .icon {
            position: absolute;
            top: 50%;
            left: 12px;
            transform: translateY(-50%);
            color: #2e7d32;
            font-size: 18px;
        }

        /* CAPTCHA Group */
        .captcha-group {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        .captcha-group span {
            width: 70%;
            font-size: 18px;
            font-weight: bold;
            color: #2e7d32;
            background-color: #e0f2f1;
            padding: 12px;
            border-radius: 5px;
            text-align: center;
            letter-spacing: 3px;
            font-family: monospace;
        }

        .captcha-group button {
            width: 25%;
            padding: 12px;
            font-size: 18px;
            background-color: #4caf50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .captcha-group button:hover {
            background-color: #388e3c;
            transform: rotate(360deg);
        }

        /* Login Button Animation */
        .login-btn {
            width: 100%;
            background-color: #4caf50;
            color: white;
            padding: 12px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            animation: pulse 2s infinite;
            transition: background-color 0.3s ease;
        }

        .login-btn:hover {
            background-color: #388e3c;
        }

        @keyframes pulse {
            0% { transform: scale(1); }
            50% { transform: scale(1.05); }
            100% { transform: scale(1); }
        }

        .extra-options {
            display: flex;
            justify-content: space-between;
            margin-top: 15px;
            font-size: 14px;
        }

        .extra-options a {
            color: #2e7d32;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .extra-options a:hover {
            color: #1b5e20;
        }

        .logo-container img {
            width: 100px;
            border-radius: 50%;
        }
        /* Login Button Animation */
/* Login Button Animation */
.login-btn {
    width: 100%;
    background-color: white; /* Default white color */
    color: #4caf50; /* Green text */
    padding: 12px;
    font-size: 16px;
    border: 2px solid #4caf50; /* Green border */
    border-radius: 5px;
    cursor: pointer;
    position: relative;
    overflow: hidden;
    transition: all 0.3s ease;
}

.login-btn::before {
    content: '';
    position: absolute;
    top: 0;
    left: -100%;
    width: 100%;
    height: 100%;
    background: rgba(255, 255, 255, 0.3);
    transition: left 0.3s ease;
}

.login-btn:hover {
    background-color: #388e3c; /* Dark green on hover */
    color: white; /* Text turns white */
}

.login-btn:hover::before {
    left: 100%;
}

    </style>
</head>
<body>
<div class="background"></div>

<div class="login-container">
    <div class="logo-container">
        <img src="https://img.icons8.com/fluency/96/000000/admin-settings-male.png" alt="Admin Logo">
    </div>
    <h2>Welcome, Admin</h2>
    <p>Please enter your credentials to access the voting system</p>
    <form onsubmit="return handleLogin(event)">
        <div class="input-group">
            <span class="icon">&#128100;</span>
            <input type="text" id="username" placeholder="Username" name="auname" required>
        </div>
        <div class="input-group">
            <span class="icon">&#128274;</span>
            <input type="password" id="password" name="password" placeholder="apwd" required>
        </div>

        <div class="captcha-group">
            <span id="captcha"></span>
            <button type="button" onclick="generateCaptcha()">↻</button>
        </div>

        <div class="input-group">
            <input type="text" id="captchaInput" placeholder="Enter CAPTCHA" required>
        </div>

        <button type="submit" class="login-btn">Login</button>
        <div class="extra-options">
            <a href="#">Forgot Password?</a>
        </div>
    </form>
</div>

<script>
    function generateCaptcha() {
        const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
        let captchaValue = '';
        for (let i = 0; i < 6; i++) {
            captchaValue += characters.charAt(Math.floor(Math.random() * characters.length));
        }
        document.getElementById('captcha').textContent = captchaValue;
    }

    document.addEventListener('DOMContentLoaded', generateCaptcha);

    function handleLogin(event) {
        event.preventDefault();
        const captcha = document.getElementById('captcha').textContent;
        const captchaInput = document.getElementById('captchaInput').value;
        if (captchaInput !== captcha) {
            alert("CAPTCHA incorrect!");
            generateCaptcha();
            return false;
        }
        window.location.href = 'Adminhome.jsp';
    }
</script>
</body>
</html>
