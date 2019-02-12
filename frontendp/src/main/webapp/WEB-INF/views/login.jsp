<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>Insert title here</title>



</head>

<body background="resources/images/loginbackground.jpg">



<span style="color:red">${error } </span><br>
<span style="color:green">${msg }</span>
<br>
<center><h2 style="font-family:verdana;"><font color="brown">Login Page</font></h2>
<br>
<br>
<br>
<c:url value='/j_spring_security_check' var="url"></c:url>
	
	<form action="${url }" method="post">
		<table>
			<tr>
				<td><b>Enter Username</b></td>
				<td><input type="text" name="j_username"></td>
			</tr>
			<tr>
				<td><b>Enter Password</b></td>
				<td><input type="password" name="j_password"></td>
			</tr>
			<tr>
			<td><input type="submit" value="Login"></td>
		
			</tr>
		</table>
	</form>
	</center>
	
	
</body>
</html>
