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
	select * from entrytbl where Id=?;
	<sql:param value="${param.id}"></sql:param>
</sql:query> 
	  
	
<form action="update.jsp">
<c:forEach var="row" items="${result.rows}">
Id : <input type="hidden" name="id" value="<c:out value="${row.Id }"></c:out>"><br><br>
Name : <input type="text" name="fname" value="<c:out value="${row.Name }"></c:out>"><br><br>
Phone : <input type="text" name="phone" value="<c:out value="${row.Phone }"></c:out>"><br><br>
Email : <input type="text" name="email" value="<c:out value="${row.Email }"></c:out>"><br><br>
Address : <input type="text" name="add" value="<c:out value="${row.Address }"></c:out>"><br><br>
 </c:forEach> 
<input type="submit" value="Submit">





 
</body>
</html>