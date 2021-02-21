<%@page import="com.smartfood.*,java.sql.*" %>
<%
	String user_id=request.getParameter("email").trim();
	String user_password=request.getParameter("password").trim();
	String  item_id= (String) session.getAttribute("item_id");
	try
	{
		Connection con = ConnectionProvider.getCon();
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from sf_user where user_email='"+user_id+"' OR user_mobile='"+user_id+"' AND user_password='"+user_password+"'");
		if(rs.next())
		{
			session.setAttribute("user_name",rs.getString(1));
			session.setAttribute("user_email", rs.getString(2));
			session.setAttribute("user_mobile", rs.getString(3));
			session.setAttribute("user_password", rs.getString(4));
			response.sendRedirect("order_online.jsp?item_id="+item_id);
		}
		else
		{
			response.sendRedirect("user_login.jsp?msg=Wrong user id and password&color=text-danger");
		}
	}
	catch(Exception e)
	{
		out.println(e);	
	}
%>