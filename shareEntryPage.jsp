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
			<u> <i>New share entry</i> </u>
		</h1>
		<form:form action="share" method="post" modelAttribute="shareRecord">
			<h2>
				<form:input type="hidden" path="companyId" value="0"/>
				<br> <br> 
				Enter share name: <form:input type="text" path="companyName"/>
				<br> <br> 
				Enter course price: <form:input type="text" path="sharePrice"/>
				<br> <br>
				<input type="submit" value="submit"/>
			</h2>
		</form:form>
	</div>
</body>
</html>