<%@page import="com.smartfood.*,java.sql.*" %>
  	<%
  		try
  		{	
	  		String vendor_email=request.getParameter("vendor_email");
			Connection con=ConnectionProvider.getCon();
			Statement stmt=con.createStatement();
			int result=stmt.executeUpdate("update sf_vendor set vendor_status='true' where vendor_email='"+vendor_email+"'");
			if(result>0)
			{	
				response.sendRedirect("admin_aprove_vendor.jsp?msg=Vendor successfully approved&color=text-success");	
			}
			else
			{
				response.sendRedirect("admin_aprove_vendor.jsp?msg=Vendor not approved&color=text-danger");	
			}
  		}
  		catch(Exception e)
  		{
  			response.sendRedirect("admin_aprove_vendor.jsp?msg="+e.getMessage()+"&color=text-danger");
		}
	%>
