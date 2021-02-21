<%@include file="user_header.jsp" %>
	<h1>welcome <%=session.getAttribute("user_name") %></h1>
		<div class="col-sm-9 p-2" style="border-radius:10px;background-color:#eeeeee;">
			<form action="">
			<div class="row">
				<div class="col-sm-3">
					<h5 style="color:black">Select Your City : -</h5>
				</div>
				<div class="col-sm-3">
					<select onchange="fetchState(this.value)" name="state" class="mr-2" style="width:100%;border:1px solid blue">
						<option value=" ">Select State</option>
						<option value="Delhi">Delhi</option>
						<option value="Noida">Noida</option>
						<option value="Greater Noida">Greater Noida</option>
						<option value="Gurugram">Gurugram</option>
					</select>
				</div>
				<div class="col-sm-3">
					<select id="cities" name="cities" class="mr-2"  style="width:100%;border:1px solid blue">
						<option>Select City</option>
					</select>
				</div>
				<div class="col-sm-3">
					<input type="submit" value="Show"class="btn btn-primary" >
				</div>
			</div>
			</form>
		</div>
		<div class="col-sm-3">
		</div>
	<!-------------------------Contents ends here--------------------------------->
<%@include file="user_footer.jsp" %>
