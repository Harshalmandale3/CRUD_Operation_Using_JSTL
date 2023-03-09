<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
   
   <%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<sql:setDataSource var="syntax" driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/jstl_crud" user="root" password="abc123"/>

<sql:query dataSource="${syntax}" var="result">
	select * from entrytbl;
</sql:query>

<center>
<h3 style="margin-top: 10px">Table</h3>
<table border="1" width="50%">
<thead>
<tr>
<th>Id</th>
<th>Name</th>
<th>Email</th>
<th>Phone</th>
<th>Address</th>
<th>Action</th>
</tr>
</thead>

<tbody>
<c:forEach var="row" items="${result.rows}">

<tr>
<td> <c:out value="${row.Id }"></c:out></td>
<td> <c:out value="${row.Name }"></c:out></td>
<td> <c:out value="${row.Email }"></c:out></td>
<td> <c:out value="${row.Phone }"></c:out></td>
<td> <c:out value="${row.Address }"></c:out></td>
<td>
<a href="edit.jsp?id=<c:out value="${row.Id }"></c:out>">Edit</a>
<a href="delete.jsp?id=<c:out value="${row.Id }"></c:out>">Delete</a>
</td>
</tr>
</c:forEach>
</tbody>
</table>
</center>

</body>
</html>