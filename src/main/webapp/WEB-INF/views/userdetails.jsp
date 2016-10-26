<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>REGISTRATION MODULE</title>
</head>
<body>
<c:url var="addAction" value="user"></c:url>

	<form:form action="${addAction}" commandName="user"
		enctype="multipart/form-data" method="post">
		<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<td><form:label path="id">
							<spring:message text="ID" />
						</form:label></td>
					<c:choose>
						<c:when test="${!empty user.id}">
							<td><form:input path="id" disabled="true" readonly="true" />
							</td>
						</c:when>

						<c:otherwise>
							<td><form:input path="id" pattern="{3,10}" required="true"
									title="id should contains 3 to 10 characters" /></td>
						</c:otherwise>
					</c:choose>
				<tr>
					<form:input path="id" hidden="true" />
					<td><form:label path="name">
							<spring:message text="Name" />
						</form:label></td>
					<td><form:input path="name" required="true" /></td>
				</tr>
				<tr>
					<td><form:label path="username">
							<spring:message text="username" />
						</form:label></td>
					<td><form:input path="username" required="true" /></td>
				</tr>

				<tr>
					<td><form:label path="password">
							<spring:message text="password" />
						</form:label></td>
					<td><form:input  path="password" required="true" /></td>
				</tr>
				<tr>
					<td><form:label path="mobile">
							<spring:message text="mobile" />
						</form:label></td>
					<td><form:input  path="mobile" required="true" /></td>
				</tr>
				<tr>
					<td><form:label path="email">
							<spring:message text="email" />
						</form:label></td>
					<td><form:input  path="email" required="true" /></td>
				</tr>
				<tr>
					<td><form:label path="admin">
							<spring:message text="admin" />
						</form:label></td>
					<td><form:input  path="admin" required="true" /></td>
				</tr>
				


				<tr>
					<td colspan="2"><c:if test="${!empty user.name}">
							<input type="submit"
								value="<spring:message text="Edit"/>" />
						</c:if> <c:if test="${empty user.name}">
							<input type="submit"
								value="<spring:message text="Add "/>" />
						</c:if></td>
				</tr>
		</table>
	</form:form>
	<br>
	<c:if test="${!empty supplierList}">
		<h1>Supplier List</h1>
		<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>USER ID</th>
					<th> Name</th>
					<th>UserName</th>
					<th>password</th>
					<th>mobile</th>
					<th>email</th>



					<th>Edit</th>
					<th>Delete</th>
				</tr>
				<c:forEach items="${supplierList}" var="supplier">
					<tr>
						<td>${supplier.id}</td>
						<td>${supplier.name}</td>
						<td>${supplier.address}</td>

						<td>
							<form action="editsupplier/${user.id}" method="post">
								<input type="submit" value="Edit">
							</form>
						</td>
						<td><form action="removesupplier/${user.id}">
								<input type="submit" value="Delete">
							</form></td>
					</tr>
				</c:forEach>
			</thead>
		</table>
	</c:if>
</body>
</html>