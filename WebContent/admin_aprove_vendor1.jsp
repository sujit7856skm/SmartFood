<%@page import="com.smartfood.*,java.sql.*" %>
<%@ include file="admin_header.jsp"%>
<div class="row m-auto">
	<div class="col-sm-12">
		<h5 class="text-primary pt-2" style="text-align:center; font-family:Monotype Corsiva; text-decoration:underline">Vendor's Details</h5>
	</div>
</div>
<hr class="mt-0">
<div class="row m-0">
	<div class="col-sm-12">
  	<%
  		String vendor_email=request.getParameter("vendor_id");
		Connection con=ConnectionProvider.getCon();
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from sf_vendor where vendor_email='"+vendor_email+"'");
		if(rs.next())
		{	
			%>
			<table class="table" style="width:80%">
				<tr>
			      <th>Shop Name : -</th><td><%=rs.getString(1) %></td>
			    </tr>
			    <tr>
			      <th>Vendor Name : -</th><td><%=rs.getString(2) %></td>
			    </tr>
			    <tr>
			      <th>Vendor Email : -</th><td><%=rs.getString(3) %></td>
			    </tr>
			    <tr>
			      <th>Vendor Mobile : -</th><td><%=rs.getString(4) %></td>
			    </tr>
			    <tr>
			      <th>Vendor State : -</th><td><%=rs.getString(6) %></td>
			    </tr>
			    <tr>
			      <th>Vendor City : -</th><td><%=rs.getString(7) %></td>
			    </tr>
			    <tr>
			      <th>Vendor landmark : -</th><td><%=rs.getString(8) %></td>
			    </tr>
			    <tr>
			      <th>Vendor Zip : -</th><td><%=rs.getString(9) %></td>
			    </tr>
		
			  </table>
			  <a class="btn btn-primary mr-5 mb-2" href="aprove_vendor.jsp?vendor_email=<%=rs.getString(3)%>">Approve request</a><a class="btn btn-primary mb-2" href="delete_vendor.jsp?vendor_email=<%=rs.getString(3)%>">Delete request</a>
			<%
		}
	
  	%>
	</div>
</div>
<%@ include file="admin_footer.jsp"%>
