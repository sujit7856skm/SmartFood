<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>SmartFood</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

  </head>
  <body>
	<!-------------------------containner start here--------------------------------->
    <div class="container-fluid">
	<!-------------------------Header start here--------------------------------->
	<div class="row" style="background-color:#dedede;padding:0.5% 0px;">
		<!-------logo start here------------------->
		<div class="col-md-1">
			
		</div>
		<!-------logo ends here------------------->
		
		<!-------banner start here------------------->
		<div class="col-md-3">
			<h1 style="color:darkblue; font-family:Monotype Corsiva; text-decoration:underline;margin:0px; float:left;"><a href="index.jsp">SmartFood</a></h1>
  	
		</div>
		<!-------banner ends here------------------->
		
		<!-------navigation start here------------------->
		<div class="col-md-8" id="header_menu">
		 <ul class="nav nav-tabs card-header-tabs">
		 <%
		  	String user_id = (String) session.getAttribute("user_email");
		  	if(user_id==null)
		  	{
		  		%>
		  <li class="nav-item">
			<a class="nav-link" href="index.jsp">Home</a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link" href="login.jsp">Login</a>
		  </li>
		  <li class="nav-item dropdown">
			<a class="nav-link dropdown-toggle"  href="#" id="navbarDropdownMenuLink" data-toggle="dropdown">Registration</a>
			<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
				 <a class="dropdown-item" href="user_registration.jsp">User-registration</a> <a class="dropdown-item" href="vendor_registration.jsp">Vendor-registration</a>
				<div class="dropdown-divider">
				</div> 
				<a class="dropdown-item" href="#">Other</a>
			</div>
		  </li>
		  		<%
		  	}
		  %>
		  <%
		  	if(user_id!=null)
		  	{
		  		%>
		  		<li class="nav-item">
					<a class="nav-link text-success" style="font-size:30px" href="#">Welcome <%=session.getAttribute("user_name") %></a>
		  		</li>	
		  		<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown">Profile</a>
					<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="user_registration.jsp">User-registration</a> <a class="dropdown-item" href="vendor_registration.jsp">Vendor-registration</a>
						<div class="dropdown-divider">
						</div> 
						<a class="dropdown-item" href="admin_logout.jsp">Log-out</a>
					</div>
		  			</li>
		  		<%
		  	}
		  %>
		</ul>
  	</div>
		<!-------navigation ends here------------------->
	</div>
	<!-------------------------Header ends here--------------------------------->
	
   <!-------------------------Slider start here--------------------------------->
	<div class="row mt-1 mb-1">
		<div class="col-md-4">
			<div class="bd-example">
			  <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
				  <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
				  <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
				  <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner">
				  <div class="carousel-item active">
					<img src="images/break2.jpg" class="d-block w-100" alt="...">
				  </div>
				  <div class="carousel-item">
					<img src="images/break1.jpg" class="d-block w-100" alt="...">
				  </div>
				  <div class="carousel-item">
					<img src="images/break5.jpg" class="d-block w-100" alt="...">
				  </div>
				  <div class="carousel-item">
					<img src="images/break3.jpg" class="d-block w-100" alt="...">
				  </div>
				  <div class="carousel-item">
					<img src="images/break4.jpg" class="d-block w-100" alt="...">
				  </div>
				  <div class="carousel-item">
					<img src="images/break7.jpg" class="d-block w-100" alt="...">
				  </div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
				  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				  <span class="sr-only">Previous</span>
				</a>
				<a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
				  <span class="carousel-control-next-icon" aria-hidden="true"></span>
				  <span class="sr-only">Next</span>
				</a>
			  </div>
			</div>
		</div>
		<div class="col-md-4">
			<div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
			  <div class="carousel-inner">
				<div class="carousel-item active">
				  <img src="images/lunch3.jpg" class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
				  <img src="images/lunch1.jpg" class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
				  <img src="images/lunch2.jpg" class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
				  <img src="images/lunch1.jpg" class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
				  <img src="images/lunch2.jpg" class="d-block w-100" alt="...">
				</div>
			  </div>
			  <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			  </a>
			  <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			  </a>
			</div>
		</div>
		<div class="col-md-4">
			<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
			  <div class="carousel-inner">
				<div class="carousel-item active">
				  <img src="images/dinner2.jpg" class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
				  <img src="images/dinner3.jpg" class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
				  <img src="images/dinner1.jpg" class="d-block w-100" alt="...">
				</div>
			  </div>
			  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			  </a>
			  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			  </a>
			</div>
		</div>
	</div>
	<!-------------------------Slider ends here--------------------------------->
	
	<hr>
