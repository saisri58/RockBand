<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CATEGORY MODULE</title>
<style type="text/css">
h1 {
    color: white;
    text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;
     text-align: center;
     font-size:40px;
}
</style>
</head>
<body><h1>CATEGORY MODULE</h1>
<c:url var="addAction" value="addcategory"></c:url>

	<form:form action="${addAction}" commandName="category">
		<table class="table table-bordered table-striped">
		<thead>			<tr>
				<td><form:label path="id">
						<spring:message text="ID" />
					</form:label></td>
				<c:choose>
					<c:when test="${!empty category.id}">
						<td><form:input path="id" disabled="true" readonly="true" />
						</td>
					</c:when>

					<c:otherwise>
						<td><form:input path="id" pattern ="{3,10}" required="true" title="id should contains 3 to 10 characters" /></td>
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
				<td colspan="2"><c:if test="${!empty category.name}">
						<input type="submit"
							value="<spring:message text="Edit category"/>" />
					</c:if> <c:if test="${empty category.name}">
						<input type="submit" value="<spring:message text="Add category"/>" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
	<br>
	
	<c:if test="${!empty categoryList}">
	<h1>Supplier List</h1>
		<table class="table table-bordered table-striped">
		<thead>
			<tr>
				<th >category ID</th>
				<th >category Name</th>
				<th >category Description</th>
				<th >Edit</th>
				<th >Delete</th>
			</tr>
			<c:forEach items="${categoryList}" var="category">
				<tr>
					<td>${category.id}</td>
					<td>${category.name}</td>
					<td>${category.description}</td>
					<td>
					<form action="editcategory/${category.id}"  method="post">
					<input type="submit" value="Edit">
					</form></td>
					<td><form action="removecategory/${category.id}">
					<input type="submit" value="Delete">
					</form></td>
				</tr>
			</c:forEach>
			</thead>
		</table>
	</c:if>
	
</body>
</html>