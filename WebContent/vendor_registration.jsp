<%@ include file="login_header.jsp"%>
	<div class="row m-auto pt-2 pl-3 pr-4 pb-3" style=" width:50%;border:1px solid blue; border-radius:10px;">
		<div class="col_sm-6 m-auto">
			<h3 class="text-primary" style="text-align:center; font-family:Monotype Corsiva; margin-top:5px;">Vendor registration Form</h3>
			<hr style="margin-top:0px;">
			
			<!-- -----------------message start hare----------------->
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
			<!-- -----------------message ends hare----------------->
			
	<!-- -----------------Registration form start hare----------------->
		<form action="vendor_registration_db.jsp" method="post">
			<div class="row mb-2">
				<div class="col_sm_6 ml-3">
					<span class="input-group-text">Shop Name</span>
					<input type="text" name="shop_name" placeholder="Enter your shop name" class="form-control" required>
				</div>
				<div class="col_sm_6 ml-3">
					<span class="input-group-text ">Name</span>
					<input type="text" name="vendor_name" placeholder="Enter your Name" class="form-control" required>
				</div>
			</div>
			<div class="row mb-2">
				<div class="col_sm_6 ml-3">
					<span class="input-group-text">Email</span>
					<input type="email" name="vendor_email" placeholder="Enter your Email" class="form-control" required>
				</div>
				<div class="col_sm_6 ml-3">
					<span class="input-group-text ">Mobile</span>
					<input  type="number" name="vendor_mobile" placeholder="Enter your Mobile" class="form-control" required>
				</div>
			</div>
			<div class="row mb-2">
				<div class="col_sm_6 ml-3">
					<span class="input-group-text">Password</span>
					<input type="password" name="vendor_password" placeholder="Enter your password"  class="form-control" required>
				</div>
				<div class="col_sm_6 ml-3">
					<span class="input-group-text ">Confirm Password</span>
					<input type="password" name="confirm_password" placeholder="Confirm your password" class="form-control" required>
				</div>
			</div>
			<div class="row mb-2">
				<div class="col_sm_6 ml-3">
					<span class="input-group-text">State</span>
					<select onchange="fetchState(this.value)" name="vendor_state" class="form-control col-sm-12"  required>
        				<option value="">Select State</option>
						<option value="Delhi">Delhi</option>
						<option value="Noida">Noida</option>
						<option value="Greater Noida">Greater Noida</option>
						<option value="Gurugram">Gurugram</option>
        			</select>
				</div>
				<div class="col_sm_6 ml-3">
					<span class="input-group-text ">City</span>
					<select id="cities" name="vendor_city" class="form-control col-sm-12"  required>
        				<option value="">Select City</option>
        			</select>
				</div>
			</div>
			<div class="row mb-2">
				<div class="col_sm_6 ml-3">
					<span class="input-group-text">Landmark</span>
					<input type="text" name="vendor_landmark" placeholder="Enter any landmark"  class="form-control" required>
				</div>
				<div class="col_sm_6 ml-3">
					<span class="input-group-text ">Zip code</span>
					<input type="text" name="vendor_zip" placeholder="Enter your zip code" class="form-control" required>
				</div>
			</div>
			<hr>
			<div  class="row">
   				 <div class="col-sm-12">
      				<button type="submit" class="btn btn-primary mr-5">Register</button>
      				<a class="mt-3" href="login.jsp">Already have an account</a>
    			</div>
  			</div>
  		</form>
  	<!-- -----------------Registration form start hare----------------->
		</div>
	</div>
<%@ include file="footer.jsp"%>