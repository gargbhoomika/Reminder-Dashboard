<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="main_style.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Reminder</title>
</head>
<body>
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

<div>
<form action="del" class="indexform" style="color:black; font-weight: 600; font-size: 110%;">
Enter reminder time: <input type="text" name="time"><br><br>
Enter reminder date: <input type="date" name="date"><br><br>
  &nbsp;&nbsp;
  <input type="submit" value="Delete Reminder" id="submit">
</form>
</div>
</body>
</html>