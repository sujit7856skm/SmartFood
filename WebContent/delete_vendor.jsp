<%@page import="com.smartfood.*,java.sql.*" %>
  	<%
  		try
  		{	
	  		String vendor_email=request.getParameter("vendor_email");
			Connection con=ConnectionProvider.getCon();
			Statement stmt=con.createStatement();
			int result=stmt.executeUpdate("delete from sf_vendor where vendor_email='"+vendor_email+"'");
			if(result>0)
			{	
				response.sendRedirect("admin_aprove_vendor.jsp?msg=Vendor's request deleted&color=text-success");	
			}
			else
			{
				response.sendRedirect("admin_aprove_vendor.jsp?msg=Vendor's request not deleted&color=text-danger");	
			}
  		}
  		catch(Exception e)
  		{
  			response.sendRedirect("admin_aprove_vendor.jsp?msg="+e.getMessage()+"&color=text-danger");
		}
	%>
