<%@page import="com.smartfood.*,java.sql.*" %>	
<%@ include file="user_item_header.jsp"%>

<%
	String state = (String) session.getAttribute("state");
	String city = (String) session.getAttribute("city");
	String	item_id = request.getParameter("item_id");
	int quantity= Integer.parseInt(request.getParameter("quantity"));
	try
 	{
		Connection con=ConnectionProvider.getCon();
 		Statement stmt=con.createStatement();
 		ResultSet rs=stmt.executeQuery("select sf_item.item_category, sf_item.item_name,sf_item.item_price,sf_item.item_imgurl from sf_item left join sf_vendor on sf_item.vendor_email=sf_vendor.vendor_email where sf_vendor.vendor_state='"+state+"'and sf_vendor.vendor_city='"+city+"' and item_id='"+item_id+"'");
 		while(rs.next())
 		{
 		%>
 		<form action="place_order_db1.jsp?item_id=<%=item_id%>" method="post">
 			<div class="col-sm-6 mb-3">
 				Total Price = <input name="net_price" value="Rs <%=rs.getInt(3)*quantity%>" type="text" disabled>
 			</div>
 			<div class="col-sm-6 mb-3">
 				Delivery Address : -<input name="delivery_address" type="text" style="width:80%">
 			</div>
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