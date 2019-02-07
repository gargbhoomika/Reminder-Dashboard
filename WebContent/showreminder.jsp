<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Reminders</title>
<link href="style.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
form
{
text-align:center;
}
.navbar-default
{
background-color: black;
}
</style>
<body>
<% response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires","0");
if(session.getAttribute("email")==null){
	response.sendRedirect("index.jsp");}  %>
<nav class="navbar navbar-default bg-dark justify-content-between">
  <a class="navbar-brand" style="color: white;">Remind Me</a>
  <a class="nav-item" style="color: white;">
  ${email}
  <form action="logout">
   <button type="submit" value="Logout" style="background:black; color: white;border-color: #0000;
  border-style: solid;cursor: pointer;">Logout</button>
   </form>
  </a>
</nav>
<br>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/signup_login_details" user="root" password="Bhoomi13@"/> 
<sql:query dataSource="${db}" var="rs">Select * from reminder_details where email = "${email}";</sql:query>
<div class="container">
<table>
  <tr>
    <th>Time</th>
    <th>Date</th>
    <th>Label</th>
  </tr>
  <c:forEach items="${rs.rows}" var="test">
  <tr>
   <td>	<c:out value="${test.time1}"></c:out><br></td>
   	<td><c:out value="${test.date1}"></c:out><br></td>
   <td>	<c:out value="${test.label}"></c:out><br></td>
   	</tr>
   </c:forEach>
</table><br><br>
</div>
<form action="add.jsp">
<input type="submit" value="Add Reminder" id="submit"><br>
</form><br>
<form action="del.jsp">
<input type="submit" value="Delete Reminder" id="submit"><br>
</form><br>
</body>
</html>