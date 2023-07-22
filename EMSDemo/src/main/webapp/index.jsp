<%@page import="com.db.DBconnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login Page</title>
 <%@include file="component/allcss.jsp" %>
 

</head>
<body style="background-color: black" >
	<%@include file="component/navbar.jsp" %>
	
  
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">

  <div class="carousel-indicators">
   <h1 class=" h1 text-center"></h1>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="image/img2.jpg" class="d-block w-100" alt="..." height="750px">
    </div>
    <div class="carousel-item">
      <img src="image/img3.jpg" class="d-block w-100" alt="..." height="750px">
    </div>
    <div class="carousel-item">
      <img src="image/img4.jpg" class="d-block w-100" alt="..." height="750px">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<%@include file="component/footer.jsp" %>
</body>
</html>