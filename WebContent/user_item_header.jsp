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
		<%
		  	String user_id = (String) session.getAttribute("user_email");
		  	if(user_id!=null)
		  	{
		  		%>
					<a class="nav-link text-success" style="font-size:26px; float:left" href="#">Welcome <%=session.getAttribute("user_name") %></a>

		  		<%
		  	}
		  %>
		 <ul class="nav nav-tabs card-header-tabs" style="float:right;">
		 <%
		  	if(user_id!=null)
		  	{
		  		%>	
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

	<!-- -------------------Admin menu start here----------------- -->
	<div class="containner-fluid"  style="background-color:#f4f4f4;">
<div class="row">
	<div class="col-sm-12">
	<%
		if(request.getParameter("state")!=null)
		{
			session.setAttribute("state", request.getParameter("state"));
			session.setAttribute("city", request.getParameter("cities"));
		}
	%>
		<h5 class="text-success pt-3" style="text-align:center; font-family:Monotype Corsiva;">Your current delivery location is :  <%= session.getAttribute("city")%>  ,<%= session.getAttribute("state")%></h5>
	</div>
</div>
<hr class="m-0">
<div class="row m-2 pb-3">
	<div class="col-sm-2 p-3 ml-2  mr-5" id="admin_menu" style="background-color:white; border-radius:10px;">
	    <h6 style="text-decoration:underline;">Food category</h6>
	    <ul style="list-style:circle" class="m-0 pl-3">
	    	<li class="m-1"><a href="breakfast.jsp?state=<%=request.getParameter("state")%>&cities=<%=request.getParameter("cities")%>">Break fast</a></li>
	    	<li class="m-1"><a href="lunch.jsp?state=<%=request.getParameter("state")%>&cities=<%=request.getParameter("cities")%>">Lunch</a></li>
	    	<li class="m-1"><a href="dinner.jsp?state=<%=request.getParameter("state")%>&cities=<%=request.getParameter("cities")%>">Dinner</a></li>
	    </ul>   
    </div>
    <!-- -------------------Admin menu start here----------------- -->
    
    
   <!-- -------------------Admin content start here----------------- -->
    <div class="col-sm-9 ml-2"  style="border-radius:10px;">
		<div class="row">
			<div class="col-sm-12">
			
