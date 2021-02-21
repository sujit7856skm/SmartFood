<%@ include file="login_header.jsp"%>
	<div class="row m-auto pt-2 pl-3 pr-4 pb-3" style=" width:50%;border:1px solid blue; border-radius:10px;">
		<div class="col_sm-6 m-auto">
	<!------------ heading start hare-------------->
			<h3 class="text-primary" style="text-align:center; font-family:Monotype Corsiva; margin-top:5px;">User registration Form</h3>
	<!------------ heading end hare-------------->
	
	<!------------ message start hare-------------->
			<hr style="margin-top:0px;">
			<% 
				String msg=request.getParameter("msg");
				if(msg!=null)
				{
				String color=request.getParameter("color");	
				%>
				<label style="text-align:center;font-size:16px;" id="msg" class="<%=color%> mb-2"><%=msg%></label>
				<%	
				}
			%>
	<!------------ message end hare-------------->
<!------------ form start hare-------------->
		<form action="user_registration_db.jsp" method="post">
			<div class="row mb-2">
				<div class="col_sm_6 ml-3">
					<span class="input-group-text ">Name</span>
					<input type="text" onchange="hide_msg()" name="user_name" placeholder="Enter your Name" class="form-control" required>
				</div>
				<div class="col_sm_6 ml-3">
					<span class="input-group-text">Email</span>
					<input type="email" name="user_email" placeholder="Enter your Email" class="form-control" required>
				</div>
			</div>
			<div class="row mb-2">
				<div class="col_sm_6 ml-3">
					<span class="input-group-text ">Mobile</span>
					<input  type="number" name="user_mobile" placeholder="Enter your Mobile" class="form-control" required>
				</div>
				<div class="col_sm_6 ml-3">
					<span class="input-group-text">Password</span>
					<input type="password" name="user_password" placeholder="Enter your password"  class="form-control" required>
				</div>
			</div>
			<div class="row mb-2">
				<div class="col_sm_6 ml-3">
					<span class="input-group-text ">Confirm Password</span>
					<input type="password" name="confirm_password" placeholder="Confirm your password" class="form-control" required>
				</div>
			</div>
			<hr>
			<div  class="col_sm_6">
   				 <div class="col-sm-12">
      				<button type="submit" class="btn btn-primary mr-5">Register</button>
      				<a class="mt-3" href="login.jsp">Already have an account</a>
    			</div>
  			</div>
  		</form>
  	<!------------ form end hare-------------->
		</div>
	</div>
<%@ include file="footer.jsp"%>