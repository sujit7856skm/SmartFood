<%@page import="com.smartfood.*,java.sql.*,java.io.*" %>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%
	try
	{
		String path=request.getRealPath("/images");
		MultipartRequest mpr=new MultipartRequest(request,path,50*1024*1024);
		Connection con=ConnectionProvider.getCon();
		ResultSet rs=con.createStatement().executeQuery("select max(item_id) from sf_item");
		int item_id=0;
		if(rs.next())
		{
			item_id=rs.getInt(1);
			item_id++;
		}
		rs.close();
		
		String img_name=mpr.getOriginalFileName("item_image");
		String imgPath=path+"/"+img_name;
		String newImgPath=path+"/"+item_id+".png";
		File f1=new File(imgPath);
		File f2=new File(newImgPath);
		f1.renameTo(f2);
		f1.delete();
		
		StringBuffer url=request.getRequestURL();
		String item_imgurl=url.substring(0,url.lastIndexOf("/"))+"/images/"+item_id+".png";
		String item_category=mpr.getParameter("item_category");
		String item_name=mpr.getParameter("item_name");
		String item_price=mpr.getParameter("item_price");
		String item_status="false";
		String vendor_email=(String)session.getAttribute("vendor_email");
		PreparedStatement pst=con.prepareStatement("insert into sf_item values(?,?,?,?,?,?,?)");
		pst.setString(1, item_category);
		pst.setInt(2, item_id);
		pst.setString(3, item_name);
		pst.setString(4, item_price);
		pst.setString(5, item_imgurl);
		pst.setString(6, vendor_email);
		pst.setString(7, item_status);
		int result=pst.executeUpdate();
		pst.close();
		con.close();
		response.sendRedirect("vendor_add_item.jsp?msg=Your item successfully added&color=text-success");
	}
	catch(Exception e)
	{
		response.sendRedirect("vendor_add_item.jsp?msg="+e.getMessage()+"&color=text-danger");
	}
%>