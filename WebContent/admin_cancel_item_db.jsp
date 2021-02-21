<%@page import="com.smartfood.*,java.sql.*" %>
  	<%
  		try
  		{	
	  		String item_id=request.getParameter("item_id");
			Connection con=ConnectionProvider.getCon();
			Statement stmt=con.createStatement();
			int result=stmt.executeUpdate("delete from sf_item  where item_id='"+item_id+"'");
			if(result>0)
			{	
				response.sendRedirect("admin_allow_item.jsp?msg=Item Canceled&color=text-success");	
			}
			else
			{
				response.sendRedirect("admin_allow_item.jsp?msg=Item not Canceled&color=text-danger");	
			}
  		}
  		catch(Exception e)
  		{
  			response.sendRedirect("admin_allow_item.jsp?msg="+e.getMessage()+"&color=text-danger");
		}
	%>
