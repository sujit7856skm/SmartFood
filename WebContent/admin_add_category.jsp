<%@ include file="admin_header.jsp"%>
<div class="row m-auto">
	<div class="col-sm-12">
				<h5 class="text-primary pt-2" style="text-align:center; font-family:Monotype Corsiva; text-decoration:underline">Add Category</h5>
	</div>
</div>
<hr class="mt-0">
<!-- --------Category form start here------- -->
<form action="admin_add_category_db.jsp" method="post">
  <div class="row m-auto">
  	<div class="col-sm-12" style="text-align:center;">
  		<!------------ message start hare-------------->
			<% 
				String msg=request.getParameter("msg");
				if(msg!=null)
				{
				String color=request.getParameter("color");	
				%>
				<label style="text-align:center;font-size:16px;" id="msg" class="<%=color %>mb-2"><%=msg%></label>
				<%	
				}
			%>
	<!------------ message end hare-------------->
  	</div>
  </div>	
  <div class="row m-auto p-2">
	<div class="col-sm-2">
		
	</div>
	<div class="col-sm-3">
		<label>Category id : -</label>
	</div>
	<div class="col-sm-4">
		<input type="text" name="category_id" placeholder="Enter category id" class="form-control" required>
	</div>
	<div class="col-sm-3">
		
	</div>
  </div>
  <div class="row m-auto p-2">
	<div class="col-sm-2">
		
	</div>
	<div class="col-sm-3">
		<label>Category name: -</label>
	</div>
	<div class="col-sm-4">
		<input type="text" name="category_name" placeholder="Enter category name" class="form-control" required>
	</div>
	<div class="col-sm-3">
		
	</div>
  </div>
  <div class="row m-auto p-2">
	<div class="col-sm-12"  style="text-align:center;">
		<button type="submit" class="btn btn-primary">Add category</button>
	</div>
  </div>
</form>
<%@ include file="admin_footer.jsp"%>
