<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="main_style.css" rel="stylesheet">
<title>Reminders</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<% response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires","0");
if(session.getAttribute("email")==null){
	response.sendRedirect("index.jsp");}  %>
<nav class="navbar navbar-default bg-dark justify-content-between">
  <a class="navbar-brand" style="color: white;">Remind Me</a>
  <a class="nav-item" style="color: white; display: inline">
  ${email}
  <form action="logout">
   <button type="submit" value="Logout" style="background:black; color: white;border-color: #0000;
  border-style: solid;cursor: pointer;  display: inline">Logout</button>
   </form>
  </a>
</nav>
<div style="text-align: center;">
<form action="add.jsp" style="margin-botton: 10px; margin-top: 10%;">
<input type="submit" value="Add Reminder" id="submit"><br>
</form><br>
<form action="del.jsp" style="margin-botton: 10px;">
<input type="submit" value="Delete Reminder" id="submit"><br>
</form><br>
<form action="showreminder.jsp" style="margin-bottom: 10px;">
<input type="submit" value="Show Reminder" id="submit"><br>
</form>
</div>
</body>
</html>