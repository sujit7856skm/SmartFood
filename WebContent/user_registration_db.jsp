<%@ page import="java.sql.*,com.smartfood.*" %>
<%
	String user_name=request.getParameter("user_name").trim();	
	String user_email=request.getParameter("user_email").trim();	
	String user_mobile=request.getParameter("user_mobile").trim();	
	String user_password=request.getParameter("user_password").trim();
	try
	{
		Connection con= ConnectionProvider.getCon();
		PreparedStatement pst=con.prepareStatement("insert into sf_user values(?,?,?,?)");
		pst.setString(1, user_name);
		pst.setString(2, user_email);
		pst.setString(3, user_mobile);
		pst.setString(4, user_password);
		int result=pst.executeUpdate();
		if(result>0)
		{
			response.sendRedirect("user_registration.jsp?msg=You are successfully registered&color=text-success");	
		}
		else
		{
			response.sendRedirect("user_registration.jsp?msg=Registration Failed&color=text-danger");
		}
	}
	catch(Exception e)
	{
		if(e.getMessage().equals("Duplicate entry 'sujit@gmail.com' for key 'PRIMARY'"))
		{
			response.sendRedirect("user_registration.jsp?msg=You have already registered by this email&color=text-danger");
		}
		else
		{
			response.sendRedirect("user_registration.jsp?msg="+e.getMessage()+"&color=text-danger");
				
		}
	}
%>