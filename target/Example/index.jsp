<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

  <title>Bootstrap Demo</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
      height:400;
  }
  </style>

</head>
<body>

<nav class="navbar navbar" style=background-color:#666666>
<nav class="navbar navbar-inverse"  >
  <div class="container-fluid" >
    <div class="navbar-header" >
      <a class="navbar-brand" href="#">SHOPPINGCART</a>
    </div>
    <ul class="nav navbar-nav" >
      <li class="active"><a href="http://localhost:8080/sample/home.html">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">mobiles <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">applie</a></li>
          <li><a href="#">sumsung</a></li>
          <li><a href="#">motorola</a></li>
          <li><a href="#">idea</a></li>
        </ul>
     </li>
      <li class="dropdown"><a class="dropdown-toggle" 
      data-toggle="dropdown" href="#">Mobile Accesaries <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">power banks</a></li>
          <li><a href="#">cases covers</a></li>
          <li><a href="#">headphones</a></li>
        </ul>
        </li>
    </ul>
    <div class="collapse navbar-collapse" style=color:red >
				<ul class="nav navbar-nav navbar-right">
				
					<li><a href="login.jsp"> <span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				</ul>
			</div>
	
  </div>

 </nav>

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
      <div class="item active" style="width:100%; height:400">
        <img src=<c:url value="/resources/Images/1.jpg" /> alt="1">
      </div>

      <div class="item" style="width:100%; height:400">
        <img src=<c:url value="/resources/Images/2.jpg" /> alt="2">
      </div>
    
      <div class="item" style="width:100%; height:400">
        <img src=<c:url value="/resources/Images/3.jpg" /> alt="3">
      </div>

    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<div><br><br></div>

  <div class="row">
    <div class="col-sm-3" style="background-color:#666666;"><a href="productsInfo?name=10001"><img src=<c:url value="/resources/Images/1.jpg" /> alt="1" width="200" height="200"></a></div>
    <div class="col-sm-3" style="background-color:#666666;"><a href="productsInfo?name=10001"><img src=<c:url value="/resources/Images/2.jpg" /> alt="2" width="200" height="200"></a></div>
    <div class="col-sm-3" style="background-color:#666666;"><a href="productsInfo?name=10002"><img src=<c:url value="/resources/Images/3.jpg" /> alt="3" width="200" height="200"></a></div>
    <div class="col-sm-3" style="background-color:#666666;"><a href="productsInfo?name=10003"><img src=<c:url value="/resources/Images/4.jpg" /> alt="4" width="200" height="200"></a></div>
  </div>
<div style="width:100%; height:40;"></div>
<div style="width:100%; height:40; border:1px dotted white;">
<a href="productsInfo?name=all"  style="color:white;align:middle; ">All Products</a>
</div>

</body>
</html>
