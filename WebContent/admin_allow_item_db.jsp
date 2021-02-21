<%@page import="com.smartfood.*,java.sql.*" %>
  	<%
  		try
  		{	
	  		String item_id=request.getParameter("item_id");
			Connection con=ConnectionProvider.getCon();
			Statement stmt=con.createStatement();
			int result=stmt.executeUpdate("update sf_item set item_status='true' where item_id='"+item_id+"'");
			if(result>0)
			{	
				response.sendRedirect("admin_allow_item.jsp?msg=Item Accepted&color=text-success");	
			}
			else
			{
				response.sendRedirect("admin_allow_item.jsp?msg=Item not Accepted&color=text-danger");	
			}
  		}
  		catch(Exception e)
  		{
  			response.sendRedirect("admin_allow_item.jsp?msg="+e.getMessage()+"&color=text-danger");
		}
	%>
