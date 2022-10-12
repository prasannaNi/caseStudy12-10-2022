<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h1 style="color: Lime">
			<u> <i>Share price updation</i> </u>
		</h1>
		<br>
		<form:form action="shareEdit" method="post" modelAttribute="shareRecord">
			<h2>
				Company Id: <form:input type="text" path="companyId" readonly="true"/>
				<br> <br> 
				Company name: <form:input type="text" path="companyName" readonly="true"/>
				<br> <br> 
				Enter new share price: <form:input type="text" path="sharePrice"/>
				<br> <br>
				<input type="submit" value="submit"/>
			</h2>
		</form:form>
	</div>
</body>
</html>