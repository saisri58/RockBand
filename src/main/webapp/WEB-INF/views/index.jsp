<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<html>
<head>

<title>RockBand</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width:100%;
	margin: auto;
	height: 500;
}
</style>


</head>
<body>
	 

	<nav class="navbar navbar">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">ROCKBAND</a>
				</div>
				<ul class="nav navbar-nav">
					<!--  <li class="active"><a href=""><span
							class="glyphicon glyphicon-home"></span>Home</a></li> -->

					
					<c:choose>
					<c:when test="${LoggedIn}">

						
						<c:choose>	
						<c:when test="${!Administrator}">	
						<li style="float: right"><a href="viewcart"
							class="w3-hover-none"><i class="glyphicon glyphicon-shopping-cart"></i></a></li>
						</c:when>
						</c:choose>
<li class="active"><a href="perform_logout"><span
class="glyphicon glyphicon-logout"></span>logout
							
							</i></a></li>
						
						<li class="active"><a href="#" class="w3-hover-none"><i
								class="glyphicon glyphicon-user"></i> Hi, ${name}</a></li>
					</c:when>

					<c:otherwise>
					 <div class="collapse navbar-collapse" style=color:red >
				<ul class="nav navbar-nav navbar-right">
				
					<li class="active"><a href="Register"> <span
								class="glyphicon glyphicon-log-in"></span>Register
						</a></li>
						<li class="active"><a href="login"> <span
								class="glyphicon glyphicon-user"></span>login
						</a></li>
					</ul>
			</div>
						
					</c:otherwise>
				</c:choose>
				</ul>

		</nav>		
		<c:choose>	
		<c:when test="${!Administrator}">	
			<!-- Category List -->
			<c:if test="${!empty categoryList}">
			 <div class="collapse navbar-collapse" style=color:red >
				<ul class="nav navbar-nav navbar-right">
				<c:forEach items="${categoryList}" var="category">
							<li><a href="${category.name}" class="w3-hover-none"><i class="fa fa-list-alt" aria-hidden="true"></i> ${category.name}</a></li>
						</c:forEach>
					
					</ul>
				</div>
			</c:if>	
		</c:when>	
	
		<c:when test="${Administrator}">
			<div class="collapse navbar-collapse" style=color:red >
				<ul class="nav navbar-nav navbar-right">
				<li><a href="product"class="w3-hover-none"><i class="glyphicon glyphicon-list"
					aria-hidden="true"></i> Products</a></li>
				<li><a href="category" class="w3-hover-none"><i class="glyphicon glyphicon-list"
					aria-hidden="true"></i> Category</a></li>
				<li><a href="supplier" class="w3-hover-none"><i class="glyphicon glyphicon-list"
					aria-hidden="true"></i> Supplier</a></li>
			</ul>
		</c:when>
	</c:choose>		
	
	</div>
	
	
	<!-- Category List End -->
	<c:choose>
	<c:when test="${IfPaymentClicked}">
			<c:import url="/WEB-INF/views/payment.jsp">
			</c:import>
		</c:when>
	
	
		<c:when test="${IfViewCartClicked}">
			<c:import url="/WEB-INF/views/cart.jsp">
			</c:import>
		</c:when>
		</c:choose>
	<c:choose>
	<c:when test="${IfLoginClicked}">
		<c:import url="/WEB-INF/views/login.jsp">
		</c:import>
	</c:when>
	
	<c:when test="${IfRegisterClicked}">
		<c:import url="/WEB-INF/views/register.jsp">
		</c:import>
	</c:when>
	</c:choose>

	<c:choose>
			<c:when test="${ProductPageClicked}">
				<c:import url="/WEB-INF/views/addproduct.jsp"></c:import>
			</c:when>
		</c:choose>
		<c:choose>
			<c:when test="${CategoryPageClicked}">
				<c:import url="/WEB-INF/views/addcategory.jsp"></c:import>
			</c:when>
		</c:choose>
		<c:choose>
			<c:when test="${SupplierPageClicked}">
				<c:import url="/WEB-INF/views/addsupplier.jsp"></c:import>
			</c:when>
		</c:choose>		


		<div class="container">
			<br>
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active" style="width: 100%; height: 400">
						<img src=<c:url value="http://wallpapercave.com/wp/w6zBZeX.jpg" /> alt="4"></div>

					<div class="item" style="width: 100%; height: 400">
						<img src=<c:url value="https://s-media-cache-ak0.pinimg.com/736x/59/4f/c5/594fc56981ef667314d51e09f5f25b51.jpg" /> alt="5">
					</div>

					<div class="item" style="width:100%; height: 400">
						<img src=<c:url value="https://s-media-cache-ak0.pinimg.com/564x/fa/d8/b8/fad8b859f8719726ca4db9be44432fe7.jpg"/> alt="6">
					</div>

				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>

		<div>
			<br> <br>
		</div>
		
		<c:choose>
			<c:when test="${!Administrator}">
				<c:if test="${!empty productList}">
					<div>
						<ul>
							<c:forEach items="${productList}" var="product">
								<li><a href=" ${product.name}" class="w3-hover-none"><img
										alt="${product.id}"
										src="<c:url value="/resources/Images/product/${product.id}.jpg"></c:url>"></a></li>
								<c:choose>
									<c:when test="${LoggedIn}">
									<form action="addtoCart/${userId}/${product.id}">
										<input type="number" value="1" name="quantity"
											> <input
											type="submit" value="Add to Cart"
											class="btn  btn-success ">
									</form>
										<%-- <li><a href="addtoCart/${userId}/${product.id}"
											class="w3-hover-none">Add to Cart</a></li> --%>
									</c:when>
									
								</c:choose>
							</c:forEach>
						</ul> 
					</div>
				</c:if>
			</c:when>
		</c:choose>

		
		
</body>
</html>
