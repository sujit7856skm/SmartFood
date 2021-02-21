<%@ page import="java.sql.*,com.smartfood.*" %>
<%
	String shop_name=request.getParameter("shop_name").trim();
	String vendor_name=request.getParameter("vendor_name").trim();	
	String vendor_email=request.getParameter("vendor_email").trim();	
	String vendor_mobile=request.getParameter("vendor_mobile").trim();	
	String vendor_password=request.getParameter("vendor_password").trim();
	String vendor_state=request.getParameter("vendor_state").trim();
	String vendor_city=request.getParameter("vendor_city").trim();
	String vendor_landmark=request.getParameter("vendor_landmark").trim();
	String vendor_zip=request.getParameter("vendor_zip").trim();
	String vendor_status="false";
	try
	{
		Connection con= ConnectionProvider.getCon();
		PreparedStatement pst=con.prepareStatement("insert into sf_vendor values(?,?,?,?,?,?,?,?,?,?)");
		pst.setString(1, shop_name);
		pst.setString(2, vendor_name);
		pst.setString(3, vendor_email);
		pst.setString(4, vendor_mobile);
		pst.setString(5, vendor_password);
		pst.setString(6, vendor_state);
		pst.setString(7, vendor_city);
		pst.setString(8, vendor_landmark);
		pst.setString(9, vendor_zip);
		pst.setString(10, vendor_status);
		int result=pst.executeUpdate();
		if(result>0)
		{
			response.sendRedirect("vendor_registration.jsp?msg=You are successfully registered&color=text-success");	
		}
		else
		{
			response.sendRedirect("vendor_registration.jsp?msg=Registration Failed&color=text-danger");
		}
	}
	catch(Exception e)
	{
		if(e.getMessage().equals("Duplicate entry 'sujit@gmail.com' for key 'PRIMARY'"))
		{
			response.sendRedirect("vendor_registration.jsp?msg=You have already registered by this email&color=text-danger");
		}
		else
		{
			response.sendRedirect("vendor_registration.jsp?msg="+e.getMessage()+"&color=text-danger");
				
		}
	}
%>