<%@ include file="vendor_header.jsp"%>
<%@page import="com.smartfood.*,java.sql.*" %>
<div class="row m-auto">
	<div class="col-sm-12">
		<h5 class="text-primary pt-2" style="text-align:center; font-family:Monotype Corsiva; text-decoration:underline">Add Item</h5>
	</div>
</div>
<hr class="mt-0">
<!-- --------Category form start here------- -->
<form action="vendor_add_item_db.jsp" method="post" enctype="multipart/form-data">
  <div class="row m-auto pl-5 pr-5">
  	<div class="col-sm-12" style="text-align:center;">
  		<!------------ message start hare-------------->
			<% 
				String msg=request.getParameter("msg");
				if(msg!=null)
				{
				String color=request.getParameter("color");	
				%>
				<label style="text-align:center;font-size:16px;" id="msg" class="<%=color%>mb-2"><%=msg%></label>
				<%	
				}
			%>
	<!------------ message end hare-------------->
  	</div>
  </div>	
  <div class="row mb-2">
		<div class="col_sm_4 ml-4 mr-4">
			<span class="input-group-text">Select item category</span>
			<select name="item_category" class="form-control col-sm-12"  required>
        		<option value="">Select product category</option>
        		<%
        		Connection con=ConnectionProvider.getCon();
        		Statement stmt=con.createStatement();
        		ResultSet rs=stmt.executeQuery("select category_name from sf_category");
        		while(rs.next())
        		{
        		%>
        		<option value="<%=rs.getString(1)%>"><%=rs.getString(1).toUpperCase()%></option>
        		<%
        		}
        		%>
        	</select>
		</div>
		<div class="col_sm_4 ml-4 mr-4">
			<span class="input-group-text ">Item name</span>
			<input type="text" name="item_name" placeholder="Enter item name" class="form-control" required>
		</div>
		<div class="col-sm-4 ml-2 mr-4">
			<span class="input-group-text">price/item</span>
			<input type="text" name="item_price" placeholder="Enter price per item" class="form-control" required>
		</div>
	</div>
	<div class="row mb-2">
		<div class="col_sm_4 ml-4 mr-4">
			<span class="input-group-text ">Image</span>
			<input type="file" name="item_image" accept="image/*" class="form-control" required>
		</div>
	</div>
	
	<hr>
	<div  class="row m-auto">
   		 <div class="col-sm-12" style="text-align:center">
      		<button type="submit" class="btn btn-primary mr-5">Add product</button>
    	</div>
  	</div>
</form>
<%@ include file="vendor_footer.jsp"%>
