<%@page import="com.smartfood.*,java.sql.*"%>
<%
	String category_id=request.getParameter("category_id").trim();
	String category_name=request.getParameter("category_name").trim();
	try
	{
		Connection con= ConnectionProvider.getCon();
		PreparedStatement pst=con.prepareStatement("insert into sf_category values(?,?)");
		pst.setString(1, category_id);
		pst.setString(2, category_name);
		pst.executeUpdate();
		response.sendRedirect("admin_add_category.jsp?msg=Your category successfully added &color=text-success");
	}
	catch(Exception e)
	{
		response.sendRedirect("admin_add_category.jsp?msg="+e.getMessage()+"&color=text-danger");
	}
%>