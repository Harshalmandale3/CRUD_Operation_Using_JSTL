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

<sql:update dataSource = "${syntax}" var = "count">
         DELETE FROM entrytbl WHERE Id ="${param.id}"         
      </sql:update>
      
      <c:if test="${count>=1}">
	<c:redirect url="show.jsp"></c:redirect>
</c:if>

</body>
</html>