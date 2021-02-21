<%@page import="com.smartfood.*,java.sql.*" %>
<%
	String id=request.getParameter("email").trim();
	String password=request.getParameter("password").trim();
	String type=request.getParameter("type").trim();
	
	if(type.equals("user"))
	{
		try
		{
			Connection con= ConnectionProvider.getCon();
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from sf_user where user_email='"+id+"' OR user_mobile='"+id+"' AND user_password='"+password+"'");
			if(rs.next())
			{
				session.setAttribute("user_name",rs.getString(1));
				session.setAttribute("user_email", rs.getString(2));
				session.setAttribute("user_mobile", rs.getString(3));
				session.setAttribute("user_password", rs.getString(4));
				response.sendRedirect("index.jsp");
			}
			else
			{
				response.sendRedirect("login.jsp?msg=Wrong user id and password&color=text-danger");
			}
		}
		catch(Exception e)
		{
			out.println(e);	
		}
	}
	else if(type.equals("vendor"))
	{
		try
		{
			Connection con= ConnectionProvider.getCon();
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from sf_vendor where vendor_email='"+id+"' OR vendor_mobile='"+id+"' AND vendor_password='"+password+"'");
			if(rs.next())
			{
				if(rs.getString(10).equals("true"))
				{
					session.setAttribute("vendor_id",rs.getString(1));
					session.setAttribute("vendor_name",rs.getString(2));
					session.setAttribute("vendor_email", rs.getString(3));
					session.setAttribute("vendor_mobile", rs.getString(4));
					session.setAttribute("vendor_password", rs.getString(5));
					session.setAttribute("vendor_state",rs.getString(6));
					session.setAttribute("vendor_city",rs.getString(7));
					session.setAttribute("vendor_city",rs.getString(8));
					session.setAttribute("vendor_city",rs.getString(9));
					response.sendRedirect("vendor_welcome.jsp");
				}
				else
				{
					response.sendRedirect("login.jsp?msg=Your registration request is in under process! You have to wait while admin aprove your registration request&color=text-danger");
				}
			}
			else
			{
				response.sendRedirect("login.jsp?msg=Wrong vendor id and password&color=text-danger");
			}
		}
		catch(Exception e)
		{
			out.println(e);	
		}
	}
	else if(type.equals("admin"))
	{
		if(id.equals("admin@gmail.com") && password.equals("admin"))
		{	
			session.setAttribute("admin_name", "Admin");
			response.sendRedirect("admin_add_category.jsp");
		}
		else
		{
			response.sendRedirect("login.jsp?msg=Wrong Admin id and password&color=text-danger");
		}
	}
	else
	{
		response.sendRedirect("login.jsp?msg=Please select your type&color=text-danger");
	}
%>