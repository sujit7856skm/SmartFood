<%@page import="com.smartfood.*,java.sql.*" %>
<%@ include file="admin_header.jsp"%>
<div class="row m-auto">
	<div class="col-sm-12">
				<h5 class="text-primary pt-2" style="text-align:center; font-family:Monotype Corsiva; text-decoration:underline">Vendor's request</h5>
	</div>
</div>
<hr class="mt-0">
<!------------ message start hare-------------->
			<% 
				String msg=request.getParameter("msg");
				if(msg!=null)
				{
				String color=request.getParameter("color");	
				%>
				<label style="text-align:center;font-size:16px;" id="msg" class="<%=color%> mb-2 ml-5"><%=msg%></label>
				<%	
				}
			%>
	<!------------ message end hare-------------->
<div class="row m-0">
	<div class="col-sm-12 table-wrapper-scroll-y my-custom-scrollbar">
		<table class="table table-striped mb-0">
 		 <thead class="thead-dark">
    		<tr class="bg-info">
     		 <th scope="col">S.N</th>
     		 <th scope="col">Store Name</th>
     		 <th scope="col">Name</th>
      		 <th scope="col">State</th>
      		 <th scope="col">city</th>
      		 <th scope="col">Action</th>
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
			if(rs.getString(10).equals("false"))	
			{
				count++;
			%>
				<tr>
			      <th scope="row"><%=count %></th>
			      <td><%=rs.getString(1) %></td>
			      <td><%=rs.getString(2) %></td>
			      <td><%=rs.getString(6) %></td>
			      <td><%=rs.getString(7) %></td>
			      <td><a class="btn btn-primary" href="admin_aprove_vendor1.jsp?vendor_id=<%=rs.getString(3)%>">View</a></td>
			    </tr>
			<%
			}
		}
	%>
  			</tbody>
		</table>
	<%
	if(count==0)
		{
			%>
				<label style="font-size:22px;" class="text-warning mb-2 ml-5">There is no any vendor's registration request</label>
			<%
		}
	%>
	</div>
</div>
<%@ include file="admin_footer.jsp"%>
