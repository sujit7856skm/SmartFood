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
      <th scope="col">Id</th>
      <th scope="col">Name</th>
    </tr>
  </thead>
  <tbody>
  	
  	<%
		Connection con=ConnectionProvider.getCon();
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from sf_category");
		int count=0;
		while(rs.next())
		{
			count++;	
			%>
				<tr>
			      <th scope="row"><%=count %></th>
			      <td><%=rs.getString(1) %></td>
			      <td><%=rs.getString(2) %></td>
			    </tr>
			<%
		}
	
  	%>
  </tbody>
</table>
	</div>
</div>
<%@ include file="admin_footer.jsp"%>
