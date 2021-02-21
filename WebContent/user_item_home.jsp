<%@ include file="user_item_header.jsp"%>
<%@page import="com.smartfood.*,java.sql.*" %>	

	<form action="vendor_add_item_db.jsp" method="post" enctype="multipart/form-data">
 	<%
 		String state = (String) session.getAttribute("state");
		String city = (String) session.getAttribute("city");
 		try
 		{
 			
 			Connection con=ConnectionProvider.getCon();
 			Statement stmt=con.createStatement();
 			ResultSet rs=stmt.executeQuery("select sf_item.item_category, sf_item.item_name,sf_item.item_price,sf_item.item_imgurl,sf_item.item_id from sf_item left join sf_vendor on sf_item.vendor_email=sf_vendor.vendor_email where sf_vendor.vendor_state='"+state+"'and sf_vendor.vendor_city='"+city+"' and item_status='true'");
 			while(rs.next())
 			{
 				%>
 				<a href="#">
 				<div class="col-sm-5 ml-2 mr-5 mb-5 p-2" style="float:left;background-color:white; border:1px solid #c8c8c8; border-radius:10px;">
 					<div class="row">
 						<div class="col-sm-5">
 							<img src="<%=rs.getString(4)%>" alt="" style="border-radius:10px;width:150px;height:150px;" />
 						</div>
 						<div class="col-sm-5">
 							<div class="row">
 								<div class="col-sm-12">
 									<h5><%=rs.getString(1).toUpperCase()%></h5>
 								</div>
 								<div class="col-sm-12">
 									<h6 style="color:black"><%=rs.getString(2).toUpperCase()%></h6>
 								</div>
 								<div class="col-sm-12">
 									<h6 style="color:#561096;">Price : Rs.<%=rs.getString(3).toUpperCase()%></h6>
 								</div>
 							</div>
 						</div>
 					</div>
 					<div class="row">
 						<div class="col-sm-5 mt-2">
 							<a href="#" class="btn btn-warning"> Add to cart</a>
 						</div>
 						<div class="col-sm-5 mt-2">
 							<a href="login_check.jsp?item_id=<%=rs.getString(5) %>" class="btn btn-primary"> Order online</a>
 						</div>
 					</div>
 				</div>
 				</a>
 				<%
 			}
 		}
 		catch(Exception e)
 		{
 			out.println(e);
 		}
 	%>
	</form>
<%@ include file="vendor_footer.jsp"%>
