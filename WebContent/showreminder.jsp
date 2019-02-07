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
</style>
<body>
${email}<br>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/signup_login_details" user="root" password="Bhoomi13@"/> 
<sql:query dataSource="${db}" var="rs">Select * from reminder_details where email = "${email}";</sql:query>
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
  
</table>
</body>
</html>