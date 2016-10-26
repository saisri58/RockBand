<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>


<style type="text/css">
h1 {
    color: white;
    text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;
     text-align: center;
     font-size:40px;
}
</style>
</head>
<body>
<c:url var="addAction" value="addproduct"></c:url>
<div class="container" ng-app="myApp" ng-controller="MyController" ng-init="getDataFromServer()">

<h1>PRODUCT MODULE</h1>
<form:form action="${addAction}" commandName="product">
		<table class="table table-bordered table-striped">
		<thead>
			<tr>
				<td><form:label path="id">
						<spring:message text="ID" />
					</form:label></td>
				<c:choose>
					<c:when test="${!empty product.id}">
						<td><form:input path="id" disabled="true" readonly="true"  />
						</td>
					</c:when>

					<c:otherwise>
						<td><form:input path="id" pattern =".{3,10}" required="true" title="id should contains 3 to 10 characters" /></td>
					</c:otherwise>
				</c:choose>
			<tr>
			<form:input path="id" hidden="true"  />
				<td><form:label path="name">
						<spring:message text="Name" />
					</form:label></td>
				<td><form:input path="name" required="true" /></td>
			</tr>
			<tr>
				<td><form:label path="description">
						<spring:message text="description" />
					</form:label></td>
				<td><form:input path="description" required="true" /></td>
			</tr>
			<tr>
				<td><form:label path="price">
						<spring:message text="price" />
					</form:label></td>
				<td><form:input path="price" required="true" /></td>
			</tr>
			
			<tr>
				<td colspan="2"><c:if test="${!empty product.name}">
						<input type="submit"
							value="<spring:message text="Edit product"/>" />
					</c:if> <c:if test="${empty product.name}">
						<input type="submit" value="<spring:message text="Add product"/>" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
	<br>
	
	<c:if test="${!empty productList}">
	<h1>ALL PRODUCTS</h1>
		<table class="table table-bordered table-striped">
		<thead>
			<tr>
				<th >Product ID</th>
				<th >Product Name</th>
				<th >Product Description</th>
				<th >Product Price</th>
				
				<th >Edit</th>
				<th >Delete</th>
			</tr>
			<c:forEach items="${productList}" var="product">
				<tr>
					<td>${product.id}</td>
					<td>${product.name}</td>
					<td>${product.description}</td>
					<td>${product.price}</td>
					
					<td>
					<form action="editproduct/${product.id}"  method="post">
					<input type="submit" value="Edit">
					</form></td>
					<td><form action="removeproduct/${product.id}">
					<input type="submit" value="Delete">
					</form></td>
				</tr>
			</c:forEach>
			</thead>
		</table>
	</c:if>
	</div>
	
</body>
</html>