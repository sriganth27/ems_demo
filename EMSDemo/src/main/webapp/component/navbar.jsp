 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.util.List"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@page import="com.dao.DeptDao"%>
<%@page import="com.db.DBconnect"%>
<%@page import="com.entity.department"%>
<style>
 @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
.nav-item{
 padding: .1rem 1rem;
 font-size: 20px;
 font-weight: 500;
 }
 .navbar-brand{
 font-size: 20px;
 font-weight: 500;
 }
 
 .navbar {
 position: sticky;
 top: 0;
 left: 0;
 z-index: 100;
 padding: .5rem 5rem;
 box-shadow: 5px 5px 20px rgba(0, 0,0, .5);
background :black;

}
.navbar .navbar-brand
{
    font-size: 25px;
    font-weight: 800;
    color:  #29f700;
}
#navbarSupportedContent a{
    color: #fff;
    border-bottom: 2px solid transparent;
}
#navbarSupportedContent a:hover{
 
 border-bottom: 2px solid #29f700;
}
#navbarSupportedContent button{
    background: #29f700;
}
   .dropdown-item{
   color:red;
   background: #29f700;
   }
 
</style>

        <nav class="navbar navbar-expand-lg navbar-light bg-info">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp"> <img src="image/DMI.png" style="width: 60px; height: 60px;">EMS</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="admin_login.jsp"><i class="fa-sharp fa-solid fa-right-to-bracket"> </i>ADMIN</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="department_login.jsp">DEPARTMENT</a>
        </li>
                
      </ul>
    
    </div>
  </div>
</nav>
      
        
       