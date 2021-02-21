<%@page import="com.smartfood.*,java.sql.*" %>
<%@ include file="admin_header.jsp"%>
<div class="row m-auto">
	<div class="col-sm-12">
				<h5 class="text-primary pt-2" style="text-align:center; font-family:Monotype Corsiva; text-decoration:underline">posted Items</h5>
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
     		 <th scope="col">Item Name</th>
     		 <th scope="col">Price</th>
      		 <th scope="col">Posted by</th>
      		 <th scope="col">State</th>
      		 <th scope="col">City</th>
      		 <th scope="col">Action</th>
    		</tr>
  		</thead>
  		<tbody>
  	
  	<%
		Connection con=ConnectionProvider.getCon();
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select sf_item.item_id, sf_item.item_name,sf_item.item_price,sf_vendor.vendor_name,sf_vendor.vendor_state,sf_vendor.vendor_city,sf_vendor.vendor_email from sf_item left join sf_vendor on sf_item.vendor_email=sf_vendor.vendor_email where sf_item.item_status='false'");
		int count=0;
		while(rs.next())
		{
			count++;
			%>
				<tr>
			      <th scope="row"><%=count %></th>
			      <td><%=rs.getString(2) %></td>
			      <td><%=rs.getString(3) %></td>
			      <td><%=rs.getString(4) %></td>
			      <td><%=rs.getString(5) %></td>
			      <td><%=rs.getString(6) %></td>
			      <td><a class="btn btn-primary" href="admin_allow_item1.jsp?item_id=<%=rs.getString(1)%>&vendor_email=<%=rs.getString(7)%>">View</a></td>
			    </tr>
			<%
		}
	%>
  			</tbody>
		</table>
	<%
	if(count==0)
		{
			%>
				<label style="font-size:22px;" class="text-warning mb-2 ml-5">There is no any new item request</label>
			<%
		}
	%>
	</div>
</div>
<%@ include file="admin_footer.jsp"%>
