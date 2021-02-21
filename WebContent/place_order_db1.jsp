
<%@page import="com.smartfood.*,java.sql.*" %>	
<%@ include file="user_item_header.jsp"%>
<%
	String state = (String) session.getAttribute("state");
	String city = (String) session.getAttribute("city");
	int	item_id = Integer.parseInt(request.getParameter("item_id"));
	String delivery_address=request.getParameter("delivery_address");
	String order_location=delivery_address+" ,"+city+", "+state;
	try
 	{
		
		Connection con=ConnectionProvider.getCon();
 		Statement stmt=con.createStatement();
 		ResultSet rs=con.createStatement().executeQuery("select max(order_id) from sf_order");
		int order_id=0;
		if(rs.next())
		{
			order_id=rs.getInt(1);
			order_id++;
		}
		rs.close();
 		ResultSet rs1=stmt.executeQuery("select sf_item.item_category, sf_item.item_name,sf_item.item_price,sf_item.item_imgurl from sf_item left join sf_vendor on sf_item.vendor_email=sf_vendor.vendor_email where sf_vendor.vendor_state='"+state+"'and sf_vendor.vendor_city='"+city+"' and item_id='"+item_id+"'");
 		if(rs1.next())
 		{
 			PreparedStatement pst=con.prepareStatement("insert into sf_order values(?,?,?,?)");
 			pst.setInt(1, order_id);
 			pst.setInt(2, item_id);
 			pst.setString(3, user_id);
 			pst.setString(4, order_location);
 			pst.executeUpdate();
 			%>
 			<div class="col-sm-6 mb-3">
 				<h3>Your order is successfully placed</h3>
 			</div>
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