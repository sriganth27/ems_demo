<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%@page import="java.util.List"%>

<%@page import="com.db.DBconnect"%>
<%@page import="com.entity.*"%>
<%@page import="com.dao.*"%>

  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Events</title>
<%@include file="allcss.jsp" %>
 <style type="text/css">
       body{
  background:  #fff;
 
  } 
  .tab{
   background:#fff;
   border: 10px;
  border-color:orange;
 }
.hd{
background: pink;
text-transform: capitalize;
}
   
    .ps{
   text-transform:uppercase;
   font-size: 30px;
  color: #b905e6e7;
  letter-spacing: 1px;
  font-family: Verdana, Geneva, Tahoma, sans-serif;
  text-shadow: 0px 1px 0px #ccc,
               0px 2px 0px #ccc,
               
               0px 2px 0px #ccc;
   }  
 </style>
</head>
<body>
 <%@include file="navbar.jsp"%>
 <div class="container-fluid p-4">
    <div class="row">
          
      
	<div align="center">
	<div class="col-md-10">
		
					<c:if test="${not empty sucMsg}">
				      <P class="fs-3 text-center text-warning fs-3">${sucMsg}</P>
				      <c:remove var="sucMsg" scope="session"/>
				   </c:if>
				   
				   <c:if test="${not empty errorMsg}">
				      <P class="fs-3 text-center text-warning fs-3">${errorMsg}</P>
				      <c:remove var="errorMsg" scope="session"/>
				   </c:if>
			   <p class="ps fs-3 text-center">Event Details List</p>
			   <table class=" table table-striped table-bordered tab">
			    <thead class="hd">
			     <tr>
			     	<th scope="col">Dept Name</th>
			     	<th scope="col">Event Category</th>
			     	<th scope="col">Event date</th>
			     	<th scope="col">Event Topic</th>
			     	<th scope="col">RPName</th>
			     	<th scope="col">RPDeatils</th>
			     	<th scope="col">Broucher</th>
			     	<th scope="col">Image1</th>
			     	<th scope="col">Image2</th>
			     	<th scope="col">Description</th>
			     	
			    </tr>
			   
			   </thead>
			   <tbody>
			   <%
			   department da = (department) session.getAttribute("deptObj");
			   EventDao dao = new EventDao(DBconnect.getConn());
			   List<event> list = dao.getAllEventByLoginDept(da.getId());
			
			    
			   for(event ap:list)
			   { %>
			   
					   <tr>
					   <td><%=ap.getDeptname()%></td>
					   <td><%=ap.getEventCategory() %></td>
					    <td><%=ap.getEventDate() %></td>
					    <td><%=ap.getEventTopic() %></td>
					    <td><%=ap.getResourcePersonName() %></td>
					    <td><%=ap.getResourcedPersonDetails() %></td>
					    <td><img src="../img/<%=ap.getBroucher()%>" style="width:200px;height:200px"></td> 
					   <td><img src="../img/<%=ap.getImage1()%>" style="width:250px;height:200px"></td>
					    <td><img src="../img/<%=ap.getImage2()%>" style="width:200px;height:200px"></td>
					    <td><%=ap.getDescription() %></td>
					  
					   </tr>

				   
				   
			   <%}
			   
			   %>
			  </tbody>
	
		   </table>
		
	 </div>
	 
	</div>
	
	 </div>
        
       </div>
 

</body>
</html>