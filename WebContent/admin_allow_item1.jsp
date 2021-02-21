<%@page import="com.smartfood.*,java.sql.*" %>
<%@ include file="admin_header.jsp"%>
<div class="row m-auto">
	<div class="col-sm-12">
		<h5 class="text-primary pt-2" style="text-align:center; font-family:Monotype Corsiva; text-decoration:underline">Item's Details</h5>
	</div>
</div>
<hr class="mt-0">
<div class="row m-0">
	<div class="col-sm-12">
  	<%
  		String item_id=request.getParameter("item_id");
		Connection con=ConnectionProvider.getCon();
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("  select sf_item.item_category, sf_item.item_name,sf_item.item_price,sf_item.item_imgurl,sf_vendor.vendor_name,sf_vendor.vendor_mobile,sf_vendor.shop_name,sf_vendor.vendor_state,sf_vendor.vendor_city,sf_vendor.vendor_landmark,sf_vendor.vendor_zip from sf_item left join sf_vendor on sf_item.vendor_email=sf_vendor.vendor_email where sf_item.item_id="+item_id);
		if(rs.next())
		{	
			%>
			<table class="table" style="width:90%">
				<tr>
			      <th>Item Category : -</th><td><%=rs.getString(1) %></td>
			    </tr>
				<tr>
			      <th>Item Name : -</th><td><%=rs.getString(2) %></td>
			    </tr>
			    <tr>
			      <th>Item Price : -</th><td><%=rs.getInt(3) %></td>
			    </tr>
			    <tr>
			      <th>Image : -</th><td><img alt=" " src="<%=rs.getString(4)%>"/></td>
			    </tr>
			    <tr>
			      <th>Posted By : -</th>
			    </tr>
			    <tr>
			      <td>Name : -</td><td><%=rs.getString(5) %></td>
			    </tr>
			    <tr>
			      <td>Mobile : -</td><td><%=rs.getString(6) %></td>
			    </tr>
			    <tr>
			      <td>Shop Name : -</td><td><%=rs.getString(7) %></td>
			    </tr>
			    <tr>
			      <td>State : -</td><td><%=rs.getString(8) %></td>
			    </tr>
			    <tr>
			      <td>City : -</td><td><%=rs.getString(9) %></td>
			    </tr>
			    <tr>
			      <td>Landmark : -</td><td><%=rs.getString(10) %></td>
			    </tr>
			    <tr>
			      <td>Zip code : -</td><td><%=rs.getString(11) %></td>
			    </tr>
			  </table>
			  <a class="btn btn-primary mr-5 mb-2" href="admin_allow_item_db.jsp?item_id=<%=item_id%>">Accept Item</a><a class="btn btn-primary mb-2" href="admin_cancel_item_db.jsp?item_id=<%=item_id%>">Cancel Item</a>
			<%
		}
	
  	%>
	</div>
</div>
<%@ include file="admin_footer.jsp"%>
