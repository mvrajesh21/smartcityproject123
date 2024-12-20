<%@page import="com.mvr.jfsd.springboot.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%    
User u = (User) session.getAttribute("user");
%>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="https://image.ibb.co/fOur3b/favicon.png"/>
<meta name="theme-color" content="#1885ed">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/png" href="https://image.ibb.co/fOur3b/favicon.png"/>
<meta name="theme-color" content="#3a9fff">
  <title>City Tech - User Home</title>
</head>

<body>
<header class="header">
  <div class="container header__container">
<div class="header__logo"><img class="header__img" src="https://image.ibb.co/kcVou6/path3000.png"> <h1 class="header__title">City<span class="header__light"> Tech</span></h1></div> 
     <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
  
  <div class="header__menu">
    <nav id="navbar" class="header__nav collapse">
      <ul class="header__elenco">
        <li class="header__el"><a href="#" class="header__link">Home</a></li>
        <li class="header__el"><a href="Payment.jsp" class="header__link">Pricing</a></li>
        <li class="header__el"><a href="#" class="header__link">Services</a></li>
        <li class="header__el"><a href="Forum.jsp" class="header__link">Forum</a></li>
        <li class="header__el"><a href="#" class="header__link">Contact us</a></li>
        <li class="header__el header__el--blue"><a href="" class="btn btn--white">PROFILE →</a></li>
      </ul>
    </nav>
  </div>
    </div>
</header>



      
    
  




<div class="sect sect--white">
<div class="container">
  <div class="row">
   <h1 class="row__title">
    Smart City Business / Companies
  </h1>
  <h2 class="row__sub">what we're offering</h2>
  </div>
  
  <div class="row row--margin">
    <div class="col-md-6 article-pre__col">
      <a href="Maps.jsp" class="article-pre ">
        <div class="article-pre__img article-pre__img--first"></div>
        <h2 class="article-pre__info">
          <span class="article-pre__cat">Smart City Solutions Providers • </span><span class="article-pre__aut"> Cisco, Siemens, IBM</span> <span class="article-pre__date"> - 5 mins read</span>
        </h2>
        <h1 class="article-pre__title">Intelligent networking, energy management solutions.<span class="article-pre__arrow--purple"> →</span></h1>
      </a>
    </div>
    
        <div class="col-md-6 article-pre__col">
      <a href="SI&SU.jsp" class="article-pre ">
        <div class="article-pre__img article-pre__img--second"></div>
        <h2 class="article-pre__info">
          <span class="article-pre__cat">Urban Mobility Solutions • </span><span class="article-pre__aut"> Uber, Lyft, HERE Technologies</span> <span class="article-pre__date"> - 5 mins read</span>
        </h2>
        <h1 class="article-pre__title">Smart transportation solutions for efficient city travel.<span class="article-pre__arrow--purple">→</span></h1>
      </a>
    </div>    
 </div>
  <div class="row">
     <div class="col-md-6 article-pre__col">
      <a href="SI&SU.jsp" class="article-pre ">
        <div class="article-pre__img article-pre__img--fourth"></div>
        <h2 class="article-pre__info">
          <span class="article-pre__cat">Energy Management Solutions • </span><span class="article-pre__aut"> Schneider Electric, Enel X</span> <span class="article-pre__date"> - 5 mins read</span>
        </h2>
        <h1 class="article-pre__title">Sustainable energy management and smart grid solutions.<span class="article-pre__arrow--purple"> →</span></h1>
      </a>
    </div>
    
        <div class="col-md-6 article-pre__col">
      <a href="SI&SU.jsp" class="article-pre ">
        <div class="article-pre__img article-pre__img--third"></div>
        <h2 class="article-pre__info">
          <span class="article-pre__cat">Data Analytics Platforms • </span><span class="article-pre__aut"> Microsoft Azure, Google Cloud</span> <span class="article-pre__date"> - 5 mins read</span>
        </h2>
        <h1 class="article-pre__title">Advanced data analytics and IoT solutions for smart cities.<span class="article-pre__arrow--purple"> →</span></h1>
      </a>
    </div>     
  </div>
</div>

</div>

<div class="sect sect--white">
  <div class="container">
    <div class="row">
      <h1 class="row__title">Smart City Public Services</h1>
      <h2 class="row__sub">services for residents and visitors</h2>
    </div>

    <div class="row row--margin">
      <div class="col-md-6 article-pre__col">
        <a href="Map1.html" class="article-pre">
          <div class="article-pre__img article-pre__img--health"></div>
          <h2 class="article-pre__info">
            <span class="article-pre__cat">Healthcare Services • </span><span class="article-pre__aut"> Apollo, Fortis, AIIMS</span><span class="article-pre__date"> - 3 mins read</span>
          </h2>
          <h1 class="article-pre__title">Modern healthcare facilities with online consultation and bookings.<span class="article-pre__arrow--purple"> →</span></h1>
        </a>
      </div>

      <div class="col-md-6 article-pre__col">
        <a href="Map1.html" class="article-pre">
          <div class="article-pre__img article-pre__img--education"></div>
          <h2 class="article-pre__info">
            <span class="article-pre__cat">Education Services • </span><span class="article-pre__aut"> Byju’s, Unacademy, EdX</span><span class="article-pre__date"> - 4 mins read</span>
          </h2>
          <h1 class="article-pre__title">Smart education platforms and institutions for a connected future.<span class="article-pre__arrow--purple"> →</span></h1>
        </a>
      </div>
    </div>

    <div class="row">
      <div class="col-md-6 article-pre__col">
        <a href="Map1.html" class="article-pre">
          <div class="article-pre__img article-pre__img--emergency"></div>
          <h2 class="article-pre__info">
            <span class="article-pre__cat">Emergency Services • </span><span class="article-pre__aut"> 108, Fire Brigade</span><span class="article-pre__date"> - 2 mins read</span>
          </h2>
          <h1 class="article-pre__title">Quick access to emergency helplines and disaster management.<span class="article-pre__arrow--purple"> →</span></h1>
        </a>
      </div>

      <div class="col-md-6 article-pre__col">
        <a href="Map1.html" class="article-pre">
          <div class="article-pre__img article-pre__img--waste"></div>
          <h2 class="article-pre__info">
            <span class="article-pre__cat">Waste Management • </span><span class="article-pre__aut"> CleanCity, EcoWaste</span><span class="article-pre__date"> - 3 mins read</span>
          </h2>
          <h1 class="article-pre__title">Efficient waste collection and recycling initiatives.<span class="article-pre__arrow--purple"> →</span></h1>
        </a>
      </div>
    </div>
  </div>
</div>

<div class="sect sect--white">
  <div class="container">
    <div class="row">
      <h1 class="row__title">Smart Living & Lifestyle</h1>
      <h2 class="row__sub">enhancing quality of life</h2>
    </div>

    <div class="row row--margin">
      <div class="col-md-6 article-pre__col">
        <a href="Map2.html" class="article-pre">
          <div class="article-pre__img article-pre__img--housing"></div>
          <h2 class="article-pre__info">
            <span class="article-pre__cat">Smart Housing • </span><span class="article-pre__aut"> Prestige, Sobha, Brigade</span><span class="article-pre__date"> - 4 mins read</span>
          </h2>
          <h1 class="article-pre__title">Affordable, connected, and sustainable housing.<span class="article-pre__arrow--purple"> →</span></h1>
        </a>
      </div>

      <div class="col-md-6 article-pre__col">
        <a href="Map2.html" class="article-pre">
          <div class="article-pre__img article-pre__img--shopping"></div>
          <h2 class="article-pre__info">
            <span class="article-pre__cat">Retail & Shopping • </span><span class="article-pre__aut"> Flipkart, Amazon</span><span class="article-pre__date"> - 5 mins read</span>
          </h2>
          <h1 class="article-pre__title">E-commerce and smart shopping centers.<span class="article-pre__arrow--purple"> →</span></h1>
        </a>
      </div>
    </div>
  </div>
</div>

<div class="sect sect--white">
  <div class="container">
    <div class="row">
      <h1 class="row__title">Transport & Infrastructure</h1>
      <h2 class="row__sub">building smarter cities</h2>
    </div>

    <div class="row row--margin">
      <div class="col-md-6 article-pre__col">
        <a href="Maps3.html" class="article-pre">
          <div class="article-pre__img article-pre__img--metro"></div>
          <h2 class="article-pre__info">
            <span class="article-pre__cat">Smart Metro & Rail • </span><span class="article-pre__aut"> BMRCL, DMRC</span><span class="article-pre__date"> - 3 mins read</span>
          </h2>
          <h1 class="article-pre__title">Efficient public transportation systems.<span class="article-pre__arrow--purple"> →</span></h1>
        </a>
      </div>

      <div class="col-md-6 article-pre__col">
        <a href="Maps3.html" class="article-pre">
          <div class="article-pre__img article-pre__img--parking"></div>
          <h2 class="article-pre__info">
            <span class="article-pre__cat">Smart Parking • </span><span class="article-pre__aut"> ParkEasy, SmartPark</span><span class="article-pre__date"> - 4 mins read</span>
          </h2>
          <h1 class="article-pre__title">Automated parking management systems.<span class="article-pre__arrow--purple"> →</span></h1>
        </a>
      </div>
    </div>
  </div>
</div>


<footer class="footer">
  <div class="container">
    <div class="row">
      <div class="col-md-2 col-xs-6">
       <img class="footer__img" src="https://image.ibb.co/kcVou6/path3000.png"> <h1 class="footer__title">City<span class="footer__light"> Tech</span></h1></div>
      <div class="col-md-10 col-xs-6">
        <div class="footer__social">
          <a href="#" class="footer__social-l">
            <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTguMS4xLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDYxMiA2MTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDYxMiA2MTI7IiB4bWw6c3BhY2U9InByZXNlcnZlIiB3aWR0aD0iMTZweCIgaGVpZ2h0PSIxNnB4Ij4KPGc+Cgk8Zz4KCQk8cGF0aCBkPSJNNjEyLDExNi4yNThjLTIyLjUyNSw5Ljk4MS00Ni42OTQsMTYuNzUtNzIuMDg4LDE5Ljc3MmMyNS45MjktMTUuNTI3LDQ1Ljc3Ny00MC4xNTUsNTUuMTg0LTY5LjQxMSAgICBjLTI0LjMyMiwxNC4zNzktNTEuMTY5LDI0LjgyLTc5Ljc3NSwzMC40OGMtMjIuOTA3LTI0LjQzNy01NS40OS0zOS42NTgtOTEuNjMtMzkuNjU4Yy02OS4zMzQsMC0xMjUuNTUxLDU2LjIxNy0xMjUuNTUxLDEyNS41MTMgICAgYzAsOS44MjgsMS4xMDksMTkuNDI3LDMuMjUxLDI4LjYwNkMxOTcuMDY1LDIwNi4zMiwxMDQuNTU2LDE1Ni4zMzcsNDIuNjQxLDgwLjM4NmMtMTAuODIzLDE4LjUxLTE2Ljk4LDQwLjA3OC0xNi45OCw2My4xMDEgICAgYzAsNDMuNTU5LDIyLjE4MSw4MS45OTMsNTUuODM1LDEwNC40NzljLTIwLjU3NS0wLjY4OC0zOS45MjYtNi4zNDgtNTYuODY3LTE1Ljc1NnYxLjU2OGMwLDYwLjgwNiw0My4yOTEsMTExLjU1NCwxMDAuNjkzLDEyMy4xMDQgICAgYy0xMC41MTcsMi44My0yMS42MDcsNC4zOTgtMzMuMDgsNC4zOThjLTguMTA3LDAtMTUuOTQ3LTAuODAzLTIzLjYzNC0yLjMzM2MxNS45ODUsNDkuOTA3LDYyLjMzNiw4Ni4xOTksMTE3LjI1Myw4Ny4xOTQgICAgYy00Mi45NDcsMzMuNjU0LTk3LjA5OSw1My42NTUtMTU1LjkxNiw1My42NTVjLTEwLjEzNCwwLTIwLjExNi0wLjYxMi0yOS45NDQtMS43MjFjNTUuNTY3LDM1LjY4MSwxMjEuNTM2LDU2LjQ4NSwxOTIuNDM4LDU2LjQ4NSAgICBjMjMwLjk0OCwwLDM1Ny4xODgtMTkxLjI5MSwzNTcuMTg4LTM1Ny4xODhsLTAuNDIxLTE2LjI1M0M1NzMuODcyLDE2My41MjYsNTk1LjIxMSwxNDEuNDIyLDYxMiwxMTYuMjU4eiIgZmlsbD0iIzcyOTNiMyIvPgoJPC9nPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo=" />
          </a>
          <a href="#" class="footer__social-l">
            <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTYuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgd2lkdGg9IjE2cHgiIGhlaWdodD0iMTZweCIgdmlld0JveD0iMCAwIDk2LjEyNCA5Ni4xMjMiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDk2LjEyNCA5Ni4xMjM7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPGc+Cgk8cGF0aCBkPSJNNzIuMDg5LDAuMDJMNTkuNjI0LDBDNDUuNjIsMCwzNi41Nyw5LjI4NSwzNi41NywyMy42NTZ2MTAuOTA3SDI0LjAzN2MtMS4wODMsMC0xLjk2LDAuODc4LTEuOTYsMS45NjF2MTUuODAzICAgYzAsMS4wODMsMC44NzgsMS45NiwxLjk2LDEuOTZoMTIuNTMzdjM5Ljg3NmMwLDEuMDgzLDAuODc3LDEuOTYsMS45NiwxLjk2aDE2LjM1MmMxLjA4MywwLDEuOTYtMC44NzgsMS45Ni0xLjk2VjU0LjI4N2gxNC42NTQgICBjMS4wODMsMCwxLjk2LTAuODc3LDEuOTYtMS45NmwwLjAwNi0xNS44MDNjMC0wLjUyLTAuMjA3LTEuMDE4LTAuNTc0LTEuMzg2Yy0wLjM2Ny0wLjM2OC0wLjg2Ny0wLjU3NS0xLjM4Ny0wLjU3NUg1Ni44NDJ2LTkuMjQ2ICAgYzAtNC40NDQsMS4wNTktNi43LDYuODQ4LTYuN2w4LjM5Ny0wLjAwM2MxLjA4MiwwLDEuOTU5LTAuODc4LDEuOTU5LTEuOTZWMS45OEM3NC4wNDYsMC44OTksNzMuMTcsMC4wMjIsNzIuMDg5LDAuMDJ6IiBmaWxsPSIjNzI5M2IzIi8+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg==" />
          </a>
          
           <a href="#" class="footer__social-l">
          <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTYuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgd2lkdGg9IjE2cHgiIGhlaWdodD0iMTZweCIgdmlld0JveD0iMCAwIDQzOC41MzMgNDM4LjUzMyIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNDM4LjUzMyA0MzguNTMzOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxnPgoJPHBhdGggZD0iTTQwOS4xMzMsMTA5LjIwM2MtMTkuNjA4LTMzLjU5Mi00Ni4yMDUtNjAuMTg5LTc5Ljc5OC03OS43OTZDMjk1LjczNiw5LjgwMSwyNTkuMDU4LDAsMjE5LjI3MywwICAgYy0zOS43ODEsMC03Ni40Nyw5LjgwMS0xMTAuMDYzLDI5LjQwN2MtMzMuNTk1LDE5LjYwNC02MC4xOTIsNDYuMjAxLTc5LjgsNzkuNzk2QzkuODAxLDE0Mi44LDAsMTc5LjQ4OSwwLDIxOS4yNjcgICBjMCwzOS43OCw5LjgwNCw3Ni40NjMsMjkuNDA3LDExMC4wNjJjMTkuNjA3LDMzLjU5Miw0Ni4yMDQsNjAuMTg5LDc5Ljc5OSw3OS43OThjMzMuNTk3LDE5LjYwNSw3MC4yODMsMjkuNDA3LDExMC4wNjMsMjkuNDA3ICAgczc2LjQ3LTkuODAyLDExMC4wNjUtMjkuNDA3YzMzLjU5My0xOS42MDIsNjAuMTg5LTQ2LjIwNiw3OS43OTUtNzkuNzk4YzE5LjYwMy0zMy41OTYsMjkuNDAzLTcwLjI4NCwyOS40MDMtMTEwLjA2MiAgIEM0MzguNTMzLDE3OS40ODUsNDI4LjczMiwxNDIuNzk1LDQwOS4xMzMsMTA5LjIwM3ogTTIxOS4yNywzMS45NzdjNDcuMjAxLDAsODguNDEsMTUuNjA3LDEyMy42MjEsNDYuODJsLTMuNTY5LDQuOTkzICAgYy0xLjQyNywyLjAwMi00Ljk5Niw1Ljg1Mi0xMC43MDQsMTEuNTY1Yy01LjcwOSw1LjcwOC0xMS45NDMsMTEuMTM2LTE4LjY5OSwxNi4yNzRjLTYuNzYyLDUuMTQtMTUuOTQsMTAuOTkyLTI3LjU1NSwxNy41NTkgICBjLTExLjYxMSw2LjU2Ny0yMy45ODIsMTIuMzI4LTM3LjExNywxNy4yNzZjLTIxLjg4Ny00MC4zNTUtNDUuMjk2LTc2LjcwOS03MC4yMzEtMTA5LjA2NCAgIEMxOTAuMDU1LDMzLjc4NCwyMDQuODA1LDMxLjk3NywyMTkuMjcsMzEuOTc3eiBNNzIuNTI0LDEwMy4wNmMxOC4yNzEtMjMuMDI2LDQwLjUzNy00MC43Myw2Ni44MDYtNTMuMSAgIGMyMy42MDEsMzEuNDA1LDQ2LjgyLDY3LjM4MSw2OS42NjIsMTA3LjkyMWMtNTcuODYyLDE1LjIyNy0xMTUuNTMyLDIyLjg0MS0xNzMuMDE0LDIyLjgzOCAgIEM0Mi4wNzIsMTUxLjk4LDU0LjI1MywxMjYuMDkxLDcyLjUyNCwxMDMuMDZ6IE00NC41NCwyODYuNzk0Yy04LjM3Ni0yMS40MTItMTIuNTYzLTQzLjkyMy0xMi41NjMtNjcuNTI3ICAgYzAtMi42NjYsMC4wOTgtNC42NjUsMC4yODYtNS45OTZjNjguOTA1LDAsMTMyLjk1NS04Ljg0OCwxOTIuMTQ5LTI2LjU1M2M2LjA5MiwxMS44LDExLjEzNiwyMi4zNjQsMTUuMTMzLDMxLjY5MyAgIGMtMC43NzEsMC4zOC0xLjk5OSwwLjgwNi0zLjcxMywxLjI4M2MtMS43MTksMC40NzYtMi45NTMsMC44MDYtMy43MjEsMC45OTlsLTEwLjU2MSwzLjcxMSAgIGMtNy4yMzYsMi42NjYtMTYuNzA4LDcuMjM1LTI4LjQwOSwxMy43MDNjLTExLjcwNCw2LjQ3OC0yNC4xMjMsMTQuMTgyLTM3LjI1NywyMy4xM2MtMTMuMTM0LDguOTQ5LTI2LjY5NiwyMC43OTctNDAuNjg0LDM1LjU1MyAgIGMtMTMuOTksMTQuNzUtMjUuNzQzLDMwLjU5MS0zNS4yNiw0Ny41M0M2NC43MTMsMzI3LjM4MSw1Mi45MTQsMzA4LjIsNDQuNTQsMjg2Ljc5NHogTTIxOS4yNyw0MDYuNTYgICBjLTQ0LjU0LDAtODQuMzItMTQuMjc3LTExOS4zNDMtNDIuODI1bDQuMjgzLDMuMTQyYzYuNjYxLTE0LjY2LDE2LjQ2Mi0yOC43NDYsMjkuNDA4LTQyLjI1NyAgIGMxMi45NDQtMTMuNTExLDI1LjQxLTI0LjQxMywzNy40MDEtMzIuNjk1YzExLjk5MS04LjI3NCwyNS4wMjgtMTYuMDc3LDM5LjExNS0yMy40MTRjMTQuMDg0LTcuMzIzLDIzLjY5MS0xMS45OTEsMjguODM1LTEzLjk4MyAgIGM1LjE0LTEuOTk4LDkuMjMzLTMuNTcyLDEyLjI3OC00LjcxNmwwLjU2OC0wLjI4N2gwLjU3NWMxOC42NDcsNDguOTE2LDMxLjk3Nyw5Ni4zMTMsMzkuOTY4LDE0Mi4xODQgICBDMjY4Ljc1Niw0MDEuNjExLDI0NC4zOTcsNDA2LjU1NywyMTkuMjcsNDA2LjU2eiBNMzc2Ljg3NiwzMjAuNDc5Yy0xNC4wODYsMjEuNzk2LTMxLjY5NiwzOS44MzQtNTIuODE3LDU0LjEwNCAgIGMtNy44MS00My43NzYtMTkuOTg1LTg4LjQxNS0zNi41NDktMTMzLjkwMmMzNy44NzctNS45MDcsNzYuOC0zLjE0MiwxMTYuNzcxLDguMjc0ICAgQzQwMC4wOTIsMjc0Ljg0MSwzOTAuOTU1LDI5OC42ODcsMzc2Ljg3NiwzMjAuNDc5eiBNNDAzLjcwNiwyMTYuNjk4Yy0xLjkwMy0wLjM3OC00LjI4NS0wLjgxLTcuMTM5LTEuMjgzICAgYy0yLjg1NC0wLjQ3My02LjMzMS0xLjA0Ny0xMC40MjQtMS43MTNjLTQuMDg3LTAuNjY2LTguNjYyLTEuMjgzLTEzLjcwMi0xLjg1NWMtNS4wNDUtMC41NzEtMTAuNDIxLTEuMDkzLTE2LjEzNi0xLjU2OSAgIGMtNS43MDgtMC40NzgtMTEuOC0wLjg1NS0xOC4yNjgtMS4xNDNjLTYuNDc5LTAuMjg0LTEzLjA0Mi0wLjQyOC0xOS43MDUtMC40MjhjLTYuNjU2LDAtMTMuNjU3LDAuMTkzLTIwLjk4MSwwLjU3MSAgIGMtNy4zMjYsMC4zNzUtMTQuNDE0LDEuMDQ5LTIxLjI2NSwxLjk5OWMtMC41NzUtMC45NTMtMS4yODctMi41MjQtMi4xNDMtNC43MTRjLTAuODU1LTIuMTg3LTEuNDc5LTMuODU1LTEuODQ4LTQuOTk3ICAgYy0zLjYyMS03Ljk5NC03LjgxLTE3LjAzNi0xMi41NzMtMjcuMTIxYzEzLjEzNC01LjMzMywyNS42NTItMTEuNDY5LDM3LjU1NS0xOC40MThjMTEuODkyLTYuOTQ5LDIxLjQwMi0xMy4xMzEsMjguNTQ0LTE4LjU1NSAgIGM3LjEzOS01LjQzLDEzLjg5NS0xMS4xODgsMjAuMjctMTcuMjc3YzYuMzc5LTYuMDksMTAuNTEzLTEwLjMyMywxMi40MjMtMTIuNzAzYzEuOTA2LTIuMzg0LDMuNzEzLTQuNzE0LDUuNDI0LTYuOTk1bDAuMjg3LTAuMjg4ICAgYzI3Ljc4OCwzMy44OCw0MS45NzQsNzIuODk3LDQyLjUzOCwxMTcuMDU5TDQwMy43MDYsMjE2LjY5OHoiIGZpbGw9IiM3MjkzYjMiLz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" />
          </a>
          
          <a href="" class="footer__social-l">
            <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTYuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgd2lkdGg9IjE2cHgiIGhlaWdodD0iMTZweCIgdmlld0JveD0iMCAwIDQzMC4xMTcgNDMwLjExNyIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNDMwLjExNyA0MzAuMTE3OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxnPgoJPHBhdGggaWQ9IkxpbmtlZEluIiBkPSJNNDMwLjExNywyNjEuNTQzVjQyMC41NmgtOTIuMTg4VjI3Mi4xOTNjMC0zNy4yNzEtMTMuMzM0LTYyLjcwNy00Ni43MDMtNjIuNzA3ICAgYy0yNS40NzMsMC00MC42MzIsMTcuMTQyLTQ3LjMwMSwzMy43MjRjLTIuNDMyLDUuOTI4LTMuMDU4LDE0LjE3OS0zLjA1OCwyMi40NzdWNDIwLjU2aC05Mi4yMTljMCwwLDEuMjQyLTI1MS4yODUsMC0yNzcuMzJoOTIuMjEgICB2MzkuMzA5Yy0wLjE4NywwLjI5NC0wLjQzLDAuNjExLTAuNjA2LDAuODk2aDAuNjA2di0wLjg5NmMxMi4yNTEtMTguODY5LDM0LjEzLTQ1LjgyNCw4My4xMDItNDUuODI0ICAgQzM4NC42MzMsMTM2LjcyNCw0MzAuMTE3LDE3Ni4zNjEsNDMwLjExNywyNjEuNTQzeiBNNTIuMTgzLDkuNTU4QzIwLjYzNSw5LjU1OCwwLDMwLjI1MSwwLDU3LjQ2MyAgIGMwLDI2LjYxOSwyMC4wMzgsNDcuOTQsNTAuOTU5LDQ3Ljk0aDAuNjE2YzMyLjE1OSwwLDUyLjE1OS0yMS4zMTcsNTIuMTU5LTQ3Ljk0QzEwMy4xMjgsMzAuMjUxLDgzLjczNCw5LjU1OCw1Mi4xODMsOS41NTh6ICAgIE01LjQ3Nyw0MjAuNTZoOTIuMTg0di0yNzcuMzJINS40NzdWNDIwLjU2eiIgZmlsbD0iIzcyOTNiMyIvPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo=" />
          </a>
        </div>
      </div>
    </div>
  </div>
</footer>
<style>
@import url('https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i');
@import url('https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css');
/*Reset*/
html, body{
  margin: 0;
  padding: 0;
  font-family: 'Lato', sans-serif;
  color: #1f4568;
}

body{
background-image: url("https://image.ibb.co/de6JzG/bitmap_1_1.png");
  background-size:cover;
  background-repeat:no-repeat;
  background-position: center;
}

/* colors 8a3aff, 6f79ff, 3a9fff black-> 1f4568  grey->8198ae*/
.sect{
  padding: 90px 0;
  position: relative;
}


.collapse{
 display: block;
}

.sect--grey{
  /*background-color: #ebeff9;*/
}

.sect--violet{
  background-color:#6f79ff;
}

.sect--padding-bottom{
  padding-bottom:115px;
}

.sect--padding-top{
  padding-top:90px;
}

.sect--white{
 /* background-color:#fff;*/
}
.row--center{
  max-width: 1000px;
  margin: 0 auto;
}
.row--margin{
  margin-top:45px;
}

.row__title{
  text-align: center;
  font-size: 26px;
  font-weight: 400;
  margin-top: 0px;
}

.row__sub{
  text-align: center;
  font-size: 18px;
  font-weight: 400;
  margin: 0px; 
  color: #8198ae;
}

.price-box{
  padding: 0px 25px;  
}

.price-box__wrap{
  background-color: #fff;
  border-radius:6px;
  box-shadow:  0 4px 8px 0px rgba(0,0,0,0.2); /*0px 22px 20px -10px rgba(0, 0, 0,0.2)*/
  padding: 35px 35px 40px 35px;
  text-align:center;
  transition: all 0.4s;
  -webkit-transition: all 0.4s;
  -moz-transition: all 0.4s;
  -ms-transition: all 0.4s;
  -o-transition: all 0.4s;
}

.price-box__img{
  display: inline-block;
}

.price-box__img{
  width:130px;
  height:130px;
  border-radius:50%;
  background-position: center;
    background-size:cover;
  background-repeat:no-repeat;
}



.price-box--purple .price-box__img{
  background-image: url("https://image.ibb.co/iGjEKG/1.png");

}


.price-box--violet .price-box__img{
  background-image: url("https://image.ibb.co/iyT8eG/2.png");

}

.price-box--blue .price-box__img{
  background-image: url("https://preview.ibb.co/nDRpmw/3.png");

}

.price-box__title{
  font-size:22px;
  letter-spacing:1px;
  margin-bottom:4px;
}

.price-box__people{
  font-size:12px;
  color:#8198ae;
  font-weight: 300;
  letter-spacing:1px;
}
.price-box__discount{
  font-size: 28px;
  font-weight: 700;
  margin-top: 20px;
  margin-bottom: 0;
}

.price-box__dollar {
    font-size: 18px;
    font-weight: 400;
    vertical-align: top;
    margin-right: 4px;
}

.price-box--purple .price-box__dollar{
  color: #8a3aff;
}

.price-box--violet .price-box__dollar{
  color: #6f79ff;
}

.price-box--blue .price-box__dollar{
  color: #3a9fff;
}

.price-box__discount--light{
  font-weight: 400;
  font-size: 20px;
  margin-left: 3px;
}

.price-box__price {
    margin-top: 3px;
    font-size: 14px;
    color: #8198ae;
    letter-spacing: 1px;
    margin-bottom: 0;
    font-weight: 300;
    text-decoration: line-through;
}

.price-box__feat {
    margin-top: 30px;
    font-size: 16px;
}

.price-box__list {
    text-align: left;
    padding-left: 30px;
    margin: 0;
    list-style: none;
}

.price-box__list-el{
  position: relative;
  margin-bottom: 8px;
  font-weight: 300;
}

.price-box__list-el:before{
  content: "✓";
  position: absolute;
  left: -25px;
  font-size: 18px;
  top: -4px;
}

.price-box--purple .price-box__list-el:before{
  color: #8a3aff;
}

.price-box--violet .price-box__list-el:before{
  color: #6f79ff;
}

.price-box--blue .price-box__list-el:before{
  color: #3a9fff;
}

.price-box__wrap:hover {
  backface-visibility: hidden;
  transform: scale(1.05, 1.05);
  box-shadow: 0px 30px 18px -8px rgba(0, 0, 0,0.1);
}

.btn{
  background-color:#3a9fff;
  border-radius: 20px;
  padding: 10px 25px;
  color: #fff;
  box-shadow: 0px 18px 13px -6px rgba(0, 0, 0,0.2);
  transition: all 0.4s;
-webkit-transition: all 0.4s;
-moz-transition: all 0.4s;
-ms-transition: all 0.4s;
-o-transition: all 0.4s;
}



.btn:hover{
box-shadow: 0px 25px 18px -6px rgba(0, 0, 0,0.2);
background-color: #63b2fc;
color: #fff;
}

.price-box__wrap:hover .btn {
  box-shadow: 0px 25px 18px -6px rgba(0, 0, 0,0.2);
}

.btn--revert{
    background-color:transparent;
    color: #8198ae;
    box-shadow: none;
    border:1px solid #c9d9e9;
}

.btn--revert:hover{
    background-color:transparent;
    color: #1f4568;
    box-shadow: none;
    border:1px solid #8198ae;
}


.btn--purple {
    background-color: #8a3aff;
}

.btn--purple:hover{
    background-color: #b284f6;
}

.btn--violet {
    background-color: #6f79ff;
}
.btn--violet:hover {
    background-color: #878ef3;
}

.btn--blue {
    background-color: #3a9fff;
}
.btn--blue:hover {
    background-color: #63b2fc;
}
.btn--width{
  width: 120px;
}

.btn--white{
  background-color: #fff;
  border: 1px solid #ededed;
  color: #8198ae;
}

.btn--white:hover{
  background-color: #fff;
  color: #8198ae;
}

.price-box__btn {
    position: absolute;
    bottom: -17px;
    left: 50%;
    margin-left: -55px;
}

.row__sub--light{
  color: #aec0d2;
}
.item__img{
  width:25px;
  margin-right:10px;
}

.carousel{
    
}

.row__carousel{
  display:inline-block;
  float:none;
  border-radius: 6px;
}
.row--text-center{
  text-align:center;

}
.carousel-control{
  opacity:1;
  background-image:none !important;
}

.carousel-control.left{
  left:-100px;
}

.carousel-control.right{
  right:-100px;
}

.carousel-inner{
  margin-top: -25px;
}
.carousel-control__img{
 position: absolute;
top: 50%;
margin-top: -90px;
}

.carousel-control.left .carousel-control__img{
  left:0;
}

.carousel-control.right .carousel-control__img{
  right:0;
}

.carousel-indicators li{
  height:12px;
  width:12px;
    background-color: #fff;
    border: 2px solid #8198ae;
  margin-right:8px;
}

.carousel-indicators li.active{
  height:14px;
  width:14px ;
    background-color: #fff;
    border: 3px solid #6f79ff;
  margin-right:10px;
}
.item {
  text-align:left;
  position:relative;
  padding:25px 15px 0px 25px;
}

.item__content{
padding: 40px;
border-radius: 6px;
box-shadow:  0 4px 8px 0px rgba(0,0,0,0.2);
background-color: #fff;
position: relative;
  height: 305px;
}
.item__img{
 display:inline-block;
}
.item__name{
display: inline-block;
font-size: 22px;
vertical-align: middle;
font-weight: 700;
}
.item__description {
    margin-top: 35px;
    color: #8198ae;
    line-height: 23px;
}
.item__avatar{
height: 45px;
width: 45px;
background-image: url("https://static.pexels.com/photos/428333/pexels-photo-428333.jpeg");
background-size: cover;
border-radius: 50%;
margin: 50px auto 15px auto;

}

.carousel-indicators {
    width: auto;
    margin: 0;
    right: 68px;
    text-align: right;
    top: 72px;
  left: auto;
  bottom: auto;
}
.item__content:after{
content: "";
width: 0;
height: 0;
border-left: 20px solid transparent;
border-right: 20px solid transparent;
border-top: 20px solid #fff;
bottom: -20px;
position: absolute;
left: 50%;
margin-left: -23px;
filter: drop-shadow(0px 7px 4px rgba(0,0,0,.2));
}

.item__people {
    margin: 0;
    text-align: center;
    font-weight: 700;
    font-size: 16px;
}

.item__occupation {
    font-size: 14px;
    color: #8198ae;
    text-align: center;
}

.site{
  text-align: center;
}
.site__title{
    font-size: 30px;
    margin: 0;
    text-align: center;
}

.site__subtitle{
    font-size: 22px;
    color: #8198ae;
    margin: 15px 0 40px 0;
    text-align: center;
}

.site__img{
  margin-top: 50px;
  display: inline-block;
  width: 77%;
}
.site__box-link .btn--revert{
  margin-left: 15px;
}


/*menu header*/
.header{
  padding: 30px 25px;
}
.header__elenco {
    padding: 0;
    margin: 0;
    list-style: none;
}
.header__menu {
    float: right;
}
.header__el{
    padding: 0 25px;
    display: inline-block;
}
.header__img{
  display: inline-block;
  vertical-align: middle;
}

.header__logo, .header__menu{
  display: inline-block;
  vertical-align: middle;
}
.header__title{
  font-size: 18px;
  margin: 0;
  margin-left: 10px;
  display: inline-block;
  line-height: 18px;
  vertical-align: middle;
}

.header__light{
  color: #8198ae;
}
.header__link{
  color: #1f4568;
  font-size: 14px;

}
.header__link:hover{
  text-decoration: none;
  color:#3a9fff;
}
.navbar-toggle .icon-bar{
  background-color: #8198ae;
}
.navbar-toggle {
    margin: 5px 0;
}
.partner{
  margin-bottom:15px;
  text-align:center;
}
.partner_img{
  width:160px;
  opacity:0.5;
    transition: all 0.4s;
    -webkit-transition: all 0.4s;
    -moz-transition: all 0.4s;
    -ms-transition: all 0.4s;
    -o-transition: all 0.4s;
}

.sect--no-padding{
  padding-top:0;
}

.partner_img:hover{    
    transform: scale(1.08, 1.08);
  opacity:0.9;
}

.article-pre__col{
  padding:0 30px;
  margin-bottom:30px;
}

.article-pre__img {
    height: 0;
    background-position: center;
    background-size: cover;
    padding-bottom: 55%;
    border-radius: 6px;
  box-shadow: 0 4px 10px 2px rgba(0,0,0,0.3);
  transition: all 0.4s;
-webkit-transition: all 0.4s;
-moz-transition: all 0.4s;
-ms-transition: all 0.4s;
-o-transition: all 0.4s;
}

.article-pre__img--first{
   background-image: url(https://teamtweaks1-blog.s3.us-east-2.amazonaws.com/blog/wp-content/uploads/2023/07/18152025/2-min.png);
}

.article-pre__img--second{
  background-image: url(https://images.unsplash.com/photo-1499951360447-b19be8fe80f5?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D);  
}

.article-pre__img--third{
  background-image: url(https://images.unsplash.com/photo-1557804506-669a67965ba0?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D);  
}

.article-pre__img--fourth{
  background-image: url(https://images.unsplash.com/photo-1600880292203-757bb62b4baf?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D);  
}

.article-pre:hover .article-pre__img {
  box-shadow: 0px 10px 13px 4px rgba(0, 0, 0,0.2);
}

.article-pre:hover {
  text-decoration:none;
}
.article-pre__info {
    font-size: 16px;
    color: #8198ae;
  margin: 0;
padding: 25px 25px 0 25px;
}

.article-pre__date {
    float: right;
}

.article-pre__title {
font-size: 20px;
color: #1f4568;
margin: 0;
padding: 15px 25px;
}

.article-pre__arrow--purple{
  color: #8a3aff;
}

.contacts_title-ag {
    margin: 0;
        margin-left: 0px;
    display: inline-block;
    vertical-align: middle;
    font-size: 22px;
    margin-left: 10px;
}

.contacts__link{
  color: #1f4568;
}

.contacts--light {
    color: #8198ae;
}

.contacts__address {
margin-top: 20px;
color: #8198ae;
font-size: 16px;
line-height: 27px;
padding-bottom: 12px;
margin-bottom: 17px;
  position: relative;
}

.contacts__address:after{
  content: '';
position: absolute;
width: 20px;
height: 1px;
background-color: #8198ae;
bottom: 0;
left: 0;
}
.contacts__info {
    color: #8198ae;
    font-size: 16px;
    margin-bottom: 2px;
}
.contacts__info-link {
    color: #3a9fff;
  text-decoration:none;
}

.form-group {
    margin-bottom: 20px;
display: table;
width: 100%;
  position:relative;
}

.form__field {
    height: 50px;
  position:relative;
    border: none;
    padding: 10px 12px;   
  width: 100%;
  border-radius:6px;
  appearance: none;
        -moz-appearance: none;
        -webkit-appearance: none;
        -ms-appearance:none;
        -o-appearance: none;
  box-shadow: 0 4px 8px 0px rgba(0,0,0,0.2);
  transition: all 0.4s;
          -webkit-transition: all 0.4s;
          -moz-transition: all 0.4s;
          -ms-transition: all 0.4s;
          -o-transition: all 0.4s;
  z-index: 2;
}

.form__select {
    background-image: url('http://www.austinlawrencepartners.com/wp-content/uploads/arrow-down-gray-hi.png');
    background-repeat: no-repeat;
    background-size: 10px;
    background-position-x: 97%;
    width: 100%;
    padding-right: 30px;
    background-position-y: center;
    background-color:#fff;
  color: #8198ae;
}

.form__field--half{
  width:50%;
  float:left;
}

.form__field--half:first-of-type{
  padding-right:15px;
}


.form__textarea{
  height:200px;
}

.btn--up{
  position: absolute;
bottom: -15px;
right: 25px;
  z-index: 3;
}

.career_title {
    color: #fff;
    font-size: 28px;
}

.career_sub {
    font-size: 22px;
    color: #c7cbff;
    margin-top: 0;
    margin-bottom: 30px;
}

.career-img {
    position: absolute;
    bottom: 0;
width: 65%;
z-index: 0;
left: 20%;
}


.footer{
 background-color: #1f4467; 
  padding: 40px 0; 
}

.footer__title{
  font-size: 18px;
margin: 0;
    margin-left: 0px;
margin-left: 10px;
display: inline-block;
line-height: 18px;
vertical-align: middle;
  color:#3a9fff;
}

.footer__light{
   color:#fff;
}

.footer__social {
    float: right;
}

.footer__social-l {
    margin-left: 15px;
    vertical-align: middle;
}

@media screen and (max-width:1024px){
  .collapse{
 display: none;
}
  .navbar-toggle {
    margin: 0;
    display: inline-block;
    margin-right: 10px;
    margin-top: 10px;
}
  .header__container{
    width: 100%;
    padding: 0;
  }
  .header__menu {
    width: 100%;
}
  .header{
    background-color:#fff; 
    padding: 0;
    box-shadow: 0 2px 10px rgba(0,0,0,0.2);
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    z-index: 4;
  }
  .header__logo{
    padding: 12px 20px 12px 20px;
  }
  .header__el {
    display: block;
    padding: 10px 20px;
    border-top: 1px solid #ededed;
}
  
  .header .btn--white, .header .btn--white:hover{
    padding: 0;
    border: 0;
    box-shadow: none;
    color:#fff;
    background-color:transparent;
  }
  .header__el--blue{
    background-color:#3a9fff;
  }

}


@media screen and (max-width:991px){
  .price-box {
    padding: 0px 10px;
  }
  .carousel-control.left{
    left: -25px;
  }
  .carousel-control.right {
    right: -25px;
}
  .item__content {
    height: auto;
}
}

@media screen and (max-width:767px){
  .footer {
    padding: 25px 0;
  }
  .price-box {
    padding: 0px 35px;
    margin-bottom: 50px;
  }
  .site__img{
    width: 100%;
  }
  .item__content{
    padding: 20px;
   
  }
  .item__description {
    font-size: 12px;
    line-height: 20px;
}
.article-pre__info {
    padding: 25px 10px 0 10px;
    font-size: 14px;
}
  .article-pre__title {
    padding: 10px 10px;
    font-size: 16px;
}
  .form {
    margin-top: 30px;
}
  .form__field--half:first-of-type {
    margin-bottom: 10px;
    padding-right: 0px;
}

.form__field--half {
    width: 100%;
    float: none;
}
  .form-group {
    margin-bottom: 10px;
  }
}



@media screen and (max-width:480px){
  .price-box {
    padding: 0px 20px;
  }
  .carousel-control__img{
    width: 20px;
  }
  .carousel-control.left {
    left: -5px;
  }
  .carousel-control.right {
    right: -5px;
  }
  .partner {
    width: 100%;
  }
  .footer {
    padding: 15px 0;
  }
  .footer__img {
    width: 15px;
  }
  .footer__title {
    font-size: 16px;
    margin-left: 5px;
  }
  .sect {
    padding: 20px 0;
  }
  .sect--padding-top{
    padding-top: 80px;
  }
  .row__sub {
    font-size: 16px;
   }
  .row__title {
    font-size: 20px;
    margin-bottom: 5px;
   }
  .price-box__title {
    font-size: 18px;
    margin-top: 10px;
}
  .price-box__img {
    width: 100px;
    height: 100px;
  }
  .price-box__wrap {
    padding: 20px 20px 30px 20px;
  }
  .price-box__people {
    font-size: 10px;
    font-weight: 400;
  }
  .price-box__discount {
    font-size: 22px;
  }
  .price-box__price {
    font-size: 12px;
  }
  .price-box__feat {
      margin-top: 15px;
      font-size: 14px;
  }
  .price-box__list-el {
    font-size: 12px;
    margin-bottom: 5px;
}
  .site__title {
    font-size: 24px;
}
  .site__subtitle {
    font-size: 18px;
    margin: 10px 0 20px 0;
  }
  .site__img {
    margin-top: 30px;
  }
  .row--margin {
    margin-top: 30px;
}
  .btn {
    font-size: 12px;
    padding: 8px 8px;
}
  .btn--width {
    width: 100px;
}
  .career_title {
    font-size: 18px;
margin-top: 0;
}
  .career_sub {
    font-size: 14px;
    margin-bottom: 20px;
}
  .carousel-indicators {
    display: none;
}
  .item__name {
    font-size: 18px;
}
  .item__description {
    margin-top: 18px;
}
  .article-pre__date {
    font-size: 12px;
    float: none;
}
 

}


.carousel {
  position: relative;
  width: 80%;
  margin: 0 auto;
  overflow: hidden;
  border-radius: 10px;
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
}

.carousel__wrapper {
  display: flex;
  transition: transform 0.5s ease-in-out;
}

.carousel__slide {
  min-width: 100%;
  box-sizing: border-box;
  text-align: center;
  padding: 20px;
}

.carousel__slide img {
  width: 100%;
  max-height: 300px;
  object-fit: cover;
  border-radius: 10px;
}

.carousel__btn {
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
  background-color: rgba(0, 0, 0, 0.5);
  color: #fff;
  border: none;
  padding: 10px 15px;
  cursor: pointer;
  font-size: 1.5rem;
  z-index: 10;
}

.carousel__btn--prev {
  left: 10px;
}

.carousel__btn--next {
  right: 10px;
}

.carousel__btn:hover {
  background-color: rgba(0, 0, 0, 0.8);
}
.carousel__btn-readmore {
  display: inline-block;
  margin-top: 10px;
  padding: 10px 15px;
  font-size: 0.9rem;
  color: #fff;
  background-color: #007BFF;
  text-decoration: none;
  border-radius: 5px;
  transition: background-color 0.3s ease;
}

.carousel__btn-readmore:hover {
  background-color: #0056b3;
}


</style>
<!-- Include jQuery -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Include Bootstrap JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>
</html>
