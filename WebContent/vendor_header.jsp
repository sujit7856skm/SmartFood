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
	<div class="row mb-2" style="background-color:#dedede;padding:0.5% 0px;">
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
		 <ul class="nav nav-tabs card-header-tabs" style="float:right;">
		  <li class="nav-item dropdown">
			<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown">Profile</a>
			<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
				 <a class="dropdown-item" href="user_registration.jsp">User-registration</a> <a class="dropdown-item" href="vendor_registration.jsp">Vendor-registration</a>
				<div class="dropdown-divider">
				</div> 
				<a class="dropdown-item" href="admin_logout.jsp">Log-out</a>
			</div>
		  </li>
		</ul>
  	</div>
		<!-------navigation ends here------------------->
	</div>
	
<!-------------------------Header ends here--------------------------------->

	<!-- -------------------Admin menu start here----------------- -->
	<div class="containner-fluid"  style="background-color:#f4f4f4;">
<div class="row">
	<div class="col-sm-12">
		<h3 class="text-success pt-3" style="text-align:center; font-family:Monotype Corsiva;">welcome <%=session.getAttribute("vendor_name") %></h3>
	</div>
</div>
<hr class="m-0">
<div class="row m-2 pb-3">
	<div class="col-sm-2 p-3 ml-2  mr-5" id="admin_menu" style="background-color:white; border-radius:10px;">
	    <ul style="list-style:circle" class="m-0 pl-3">
	    	<li class="m-1"><a href="vendor_add_item.jsp">Add Item</a></li>
	    	<li class="m-1"><a href="admin_view_category.jsp">View all Category</a></li>
	    </ul>   
    </div>
    <!-- -------------------Admin menu start here----------------- -->
    
    
   <!-- -------------------Admin content start here----------------- -->
    <div class="col-sm-9 ml-2"  style="background-color:white;border-radius:10px;">
		<div class="row">
			<div class="col-sm-12">
			
