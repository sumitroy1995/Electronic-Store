<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<b>List of Categories:</b>
<table class='table table-bordered table-striped table-hover'>
<thead class="bg-primary">
<tr>
<th>Category Name:</th>
<th>Action :</th>
</tr>
</thead>
<tbody>
<c:forEach var="c" items="${categoryList }">
<tr>
<td>${c.categoryname }</td>
	    <security:authorize access="hasRole('ROLE_ADMIN')">
<td><a href="<c:url value='/admin/deletecategory/${c.id }'></c:url>"><span class="glyphicon glyphicon-trash"></span></a></td>
</security:authorize>
</tr>
</c:forEach>
</tbody>
</table>
</div>
</body>
</html>