<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h1 style="color: Lime">
			<u> <i>Company Share List</i> </u>
		</h1>
		<br>
		<h3> <a href="shareEntry" style="color: Magenta">Enlist a new Company</a> </h3>
		<br>
		<h4>
		<table border="2">
				<tr style="background-color:orange; color: blue;">
					<th style="padding: 5px;">COMPANY ID</th>
					<th style="padding: 5px;">COMPANY NAME</th>
					<th style="padding: 5px;">SHARE PRICE</th>
					<th style="padding: 5px;">ACTIONS</th>
				</tr>
				<c:forEach items="${shareList}" var="share">
					<tr style="background-color: yellow; color: blue;">
						<td style="padding: 10px;">${share.companyId}</td>
						<td style="padding: 10px;">${share.companyName}</td>
						<td style="padding: 10px;">${share.sharePrice}</td>
						<td>
							<a style="color: Magenta" href="editShare/${share.companyId}">Edit Share Price</a>
							&nbsp; &nbsp; &nbsp;
							<a style="color: Magenta" href="deleteShare/${share.companyId}">Delete company</a>
						</td>
					</tr>
				</c:forEach>
			</table>
		</h4>
	</div>
</body>
</html>