<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="home.jsp">
Name : <input type="text" name="fname"><br>
Phone : <input type="text" name="phone"><br>
Email : <input type="text" name="email"><br>
Address : <input type="text" name="add"><br>
<input type="submit" value="Submit">

<a href="show.jsp"> Show Page</a>
</form>
</body>
</html>