
       <%
            String user_id=(String)session.getAttribute("user_email");
       		String item_id = request.getParameter("item_id");
       		if(user_id==null)
       		{
       			session.setAttribute("item_id", item_id);
       			response.sendRedirect("user_login.jsp");
       		}
       		else
       		{
       			response.sendRedirect("order_online.jsp?item_id="+item_id);
       		}
       %>
       
  
   