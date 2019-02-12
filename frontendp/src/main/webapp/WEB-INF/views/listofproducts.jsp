<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
$(document).ready(function($) {
    $(".table-row").click(function() {
        window.document.location = $(this).data("href");
    });
});


$(document).ready(function(){
	var searchCondition='${searchCondition}'
	$('.table').DataTable({
		"lengthMenu":[[5,7,-1],[5,7,"All"]],
	"oSearch" : {
		"sSearch" : searchCondition
	}
	});
});
</script>
<style type="text/css">
.table-row{
cursor:pointer;
}
</style>
</head>
<body>
<div class="container">
<b>List Of Products</b><br>
<table class='table table-hover'>
<thead class="bg-primary">
<tr>
<th>Product Image</th>
<th>Product Id</th>
<th>Product Name</th>
<th>Price</th>
<th>Category</th>
<th>Action</th>
</tr>
</thead>
<tbody>
<c:forEach var="p" items="${productList }">
<tr  class="table-row"data-href="<c:url value='/all/getproduct/${p.id }'></c:url>">
<td><img src='<c:url value="/resources/images/${p.id }.png"></c:url>' height="30px" width="30px"></td>
<td><a href="<c:url value='/all/getproduct/${p.id }'></c:url>">${p.id }</a></td>
<td><a href="<c:url value='/all/getproduct/${p.id }'></c:url>">${p.productname } </td>
<td>${p.price }</td>

<td>${p.category.categoryname }</td>
<td>
<a href="<c:url value='/all/getproduct/${p.id }'></c:url>"><span class="glyphicon glyphicon-info-sign"></span></a>
<security:authorize access="hasRole('ROLE_ADMIN')">
<a href="<c:url value='/admin/deleteproduct/${p.id }'></c:url>"><span class="glyphicon glyphicon-trash"></span></a>
</security:authorize>
<security:authorize access="hasRole('ROLE_ADMIN')">
<a href="<c:url value="/admin/getupdateform/${p.id }"></c:url>"><span class="glyphicon glyphicon-pencil"></span></a>
</security:authorize>
</td>
</tr>
</c:forEach>
</tbody>
</table>
</div>
</body>
</html>