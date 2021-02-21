<%@page import="com.smartfood.*,java.sql.*" %>	
<%@ include file="user_item_header.jsp"%>

<%
	String state = (String) session.getAttribute("state");
	String city = (String) session.getAttribute("city");
	String	item_id = request.getParameter("item_id");
	try
 	{
		Connection con=ConnectionProvider.getCon();
 		Statement stmt=con.createStatement();
 		ResultSet rs=stmt.executeQuery("select sf_item.item_category, sf_item.item_name,sf_item.item_price,sf_item.item_imgurl from sf_item left join sf_vendor on sf_item.vendor_email=sf_vendor.vendor_email where sf_vendor.vendor_state='"+state+"'and sf_vendor.vendor_city='"+city+"' and item_id='"+item_id+"'");
 		while(rs.next())
 		{
 		%>
 		<form action="place_order.jsp?item_id=<%=item_id%>" method="post">
 		<table class="table" style="width:90%">
			<tr>
			    <th>Item Category : -</th><td><%=rs.getString(1).toUpperCase() %></td>
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
				<th>Quantity : -</th><td><input name="quantity" type="number"></td>
			</tr>
		</table>
 		<input class="btn btn-primary mr-5 mb-2" type="submit" value="Order"><a class="btn btn-primary mb-2" href="user_item_home.jsp">Cancel</a>
 			
 		</form>
 		<%
 		}
 	}
 	catch(Exception e)
 	{
 		out.println(e);
 	}
%>

<%@ include file="vendor_footer.jsp"%>