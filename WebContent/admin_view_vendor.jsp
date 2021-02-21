<%@page import="com.smartfood.*,java.sql.*" %>
<%@ include file="admin_header.jsp"%>
<div class="row m-auto">
	<div class="col-sm-12">
				<h5 class="text-primary pt-2" style="text-align:center; font-family:Monotype Corsiva; text-decoration:underline">All Vendors</h5>
	</div>
</div>
<hr class="mt-0">
<div class="row m-auto">
	<div class="col-sm-12">
		<table class="table">
  <thead class="thead-dark">
    <tr class="bg-info">
      <th scope="col">S.N</th>
      <th scope="col">Shop Name</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Mobile</th>
      <th scope="col">State</th>
      <th scope="col">city</th>
      <th scope="col">Address</th>
      <th scope="col">Zip</th>
    </tr>
  </thead>
  <tbody>
  	
  	<%
		Connection con=ConnectionProvider.getCon();
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from sf_vendor");
		int count=0;
		while(rs.next())
		{
			if(rs.getString(10).equals("true"))	
			{
				count++;
			%>
				<tr>
			      <th scope="row"><%=count %></th>
			      <td><%=rs.getString(1) %></td>
			      <td><%=rs.getString(2) %></td>
			      <td><%=rs.getString(3) %></td>
			      <td><%=rs.getString(4) %></td>
			      <td><%=rs.getString(6) %></td>
			      <td><%=rs.getString(7) %></td>
			      <td><%=rs.getString(8) %></td>
			      <td><%=rs.getString(9) %></td>
			    </tr>
			<%
			}
		}
	
  	%>
  </tbody>
</table>
	</div>
</div>
<%@ include file="admin_footer.jsp"%>
