<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <style>
        body {
            background: #111;
            min-height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .navbar {
            width: 161vw;
            background: rgba(183,28,28,0.98);
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 0;
            border-radius: 0 0 18px 18px;
            box-shadow: 0 0 30px 5px #00ffe7, 0 0 60px 10px #00bfff33;
            animation: glowNav 2s infinite alternate;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 10;
        }
        @keyframes glowNav {
            0% {
                box-shadow: 0 0 30px 5px #00ffe7, 0 0 60px 10px #00bfff33;
            }
            100% {
                box-shadow: 0 0 50px 10px #00ffe7, 0 0 90px 20px #00bfff55;
            }
        }
        .nav-label {
            color: #fff;
            font-size: 18px;
            font-weight: bold;
            padding: 18px 32px;
            cursor: pointer;
            transition: background 0.2s, color 0.2s, box-shadow 0.3s;
            border: none;
            background: none;
            outline: none;
            border-radius: 0 0 12px 12px;
            margin: 0 6px;
            box-shadow: 0 0 8px #00ffe7 inset;
            text-decoration: none;
            display: inline-block;
        }
        .nav-label:hover, .nav-label.active {
            background: #fff;
            color: #b71c1c;
            box-shadow: 0 0 16px #00ffe7, 0 0 8px #00bfff inset;
        }
        .main-content {
            display: flex;
            align-items: center;
            justify-content: center;
            margin-top: 140px;
            width: 90vw;
            max-width: 1100px;
        }
        .container {
            background: rgba(20,20,20,0.97);
            padding: 36px 40px;
            border-radius: 10px;
            box-shadow: 0 2px 12px rgba(0,0,0,0.25);
            color: #fff;
            min-width: 750px;
            max-width: 900px;
            animation: glowLogin 2s infinite alternate;
        }
        @keyframes glowLogin {
            0% {
                box-shadow: 0 0 20px 2px #00ffe7, 0 0 30px 5px #00bfff33;
            }
            100% {
                box-shadow: 0 0 40px 8px #00ffe7, 0 0 60px 10px #00bfff55;
            }
        }
        .food-img {
            width: 900px;
            height: 1000px;
            object-fit: cover;
            border-radius: 20px;
            margin-left: 150px;
            box-shadow: 0 0 18px #00ffe7, 0 0 8px #00bfff inset;
            animation: glowFood 2s infinite alternate;
            background: #222;
        }
        @keyframes glowFood {
            0% { box-shadow: 0 0 18px #00ffe7, 0 0 8px #00bfff inset; }
            100% { box-shadow: 0 0 36px #00ffe7, 0 0 16px #00bfff inset; }
        }
        h1, h2 {
            color: #00ffe7;
            text-align: left;
            
        }
        ul {
            font-size: 18px;
            color: #fff;
            margin-bottom: 24px;
            text-align: left;
            display: inline-block;
        }
        .specials, .gallery, .reviews {
            margin-bottom: 24px;
        }
        .menu-btn {
            display: block;
            width: 200px;
            margin: 20px 0;
            padding: 12px;
            background: green;
            color: #fff;
            border: none;
            border-radius: 500px;
            font-size: 25px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
        }
        .menu-btn:hover {
            background: #d84315;
        }
        @media (max-width: 900px) {
            .main-content { flex-direction: column-reverse; }
            .food-img { margin: 0 0 28px 0; width: 90vw; height: 200px; }
            .container { width: 90vw; min-width: unset; }
        }
    </style>
    <script>
        function setActive(label) {
            var navs = document.getElementsByClassName('nav-label');
            for (var i = 0; i < navs.length; i++) {
                navs[i].classList.remove('active');
            }
            label.classList.add('active');
        }
    </script>
</head>
<body>    
    <div class="navbar">
        <a class="nav-label active" href="HomePage.jsp" onclick="setActive(this)">Home</a>
        <a class="nav-label" href="AboutPage.jsp" onclick="setActive(this)">About</a>
        <a class="nav-label" href="BestDishes.jsp" onclick="setActive(this)">Best Dishes</a>
        <a class="nav-label" href="TrackOrder.jsp" onclick="setActive(this)">Track Order</a>
        <a class="nav-label" href="AdminLoginPage.jsp" onclick="setActive(this)">Log In</a>
    </div>
    <div class="main-content">
        <div class="container">
            <h1><b>Healthy Food For Wealthy Mood</b></h1>
            <h2 style="color:yellow"><b>Upto 30% OFF</b></h2>
            <ul>
                <li><b>Navigation Menu:</b> Home, About, Menu, Order Online, Services, Contact, Login/Register</li>
                <li><b>Featured Dishes / Popular Items</b></li>
                <li><b>Today's Specials / Offers</b></li>
                <li><b>Online Table Reservation</b></li>
                <li><b>Order Online Button</b></li>
                <li><b>Menu Categories:</b> Veg, Non-Veg, Starters, Main Course, Desserts, Beverages, etc.</li>
                <li><b>Chef’s Special / Recommended</b></li>
                <li><b>Customer Reviews / Testimonials</b></li>
                <li><b>Gallery / Restaurant Photos</b></li>
                <li><b>Location Map</b></li>
                <li><b>Opening Hours</b></li>
                <li><b>Contact Information</b></li>
                <li><b>Social Media Links</b></li>
                <li><b>Newsletter Signup</b></li>
            </ul>
            <a href="ViewFullMenu.jsp" class="menu-btn">View Full Menu</a>
            <div class="specials">
                <h2>Today's Specials</h2>
                <p>Enjoy our chef's handpicked dishes at special prices!</p>
            </div>
            <div class="gallery">
                <h2>Gallery</h2>
                <p>Food Photos,Drinks & Desserts,Ambience & Interior,Staff in Action,Customer Moments</p>
            </div>
            <div class="reviews">
                <h2>Customer Reviews</h2>
                <p>"Amazing food and quick delivery!" - Rachana</p>
                <p>"Best restaurant in town!" - Ankit</p>
                <p>"Wow nice restaurant and food!" - Aditya</p>
            </div>
            <div style="text-align:left;">
                <p><b style="color: #00ffe7">Location:</b> P&M Mall,6th Floor Kurji (Near Boring Road Crossing),Patna  , Your City</p>
                
                <p><b style="color: #00ffe7">Contact:</b> +91-8709780215 , +91-9229754729</p>
                
                <p><b style="color: #00ffe7">Open and Closing Time:</b> 10:00 AM To 10:00 PM</p>
            </div>
        </div>
        <img class="food-img" src="Image/ramadan.jpg" alt="Delicious Food">
    </div>
    </body>
</html>
