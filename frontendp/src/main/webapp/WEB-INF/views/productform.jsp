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
<c:url value="/admin/addproduct" var="url"></c:url>
<form:form modelAttribute="product" action="${url }" method="post" enctype="multipart/form-data">
<form:hidden path="id"></form:hidden>
<b>Enter Product Name:</b>&nbsp;&nbsp;&nbsp;&nbsp;
<form:input path="productname"></form:input>&nbsp;&nbsp;&nbsp;
<form:errors path="productname" cssStyle="color:red"></form:errors>
<br>
<br>
<br>
<b>Enter Product Desc:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<form:textarea path="productdesc"></form:textarea>&nbsp;&nbsp;&nbsp;
<form:errors path="productdesc" cssStyle="color:red"></form:errors>
<br>
<br>
<br>
<b>Enter Product Price:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<form:input path="price"></form:input>&nbsp;&nbsp;&nbsp;
<form:errors path="price" cssStyle="color:red"></form:errors>
<br>
<br>
<br>
<b>Enter Product Quantity:</b>
<form:input path="quantity" type="number"></form:input>&nbsp;&nbsp;&nbsp;
<form:errors path="quantity" cssStyle="color:red"></form:errors>
<br>
<br>
<br>
<b>Category :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<form:select path="category.id">
 <c:forEach items="${categories }" var="c">
 <form:option value="${c.id }">${c.categoryname }</form:option>
 </c:forEach>
 </form:select>
<br>
<br>
<br>
<b>Upload Image:</b>
<form:input path="image" type="file"></form:input>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<input type="submit" value="ADD PRODUCT">
<br>
<br>
<button type="button" class="btn btn-default"><a href="<c:url value="/all/getallproducts"></c:url>">Back</a></button>


</form:form>








</div>

</body>
</html>