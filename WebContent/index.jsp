 <%@ include file="table_creation _db.jsp" %>
<%@ include file="header.jsp"%>
	<!-------------------------Content start here--------------------------------->
	<div class="container-fluid">
		<div class="col-sm-9 p-4 mb-3" style="border-radius:10px;background-color:#eeeeee;">
			<form action="user_item_home.jsp" method="post">
			<div class="row">
				<div class="col-sm-3">
					<h6 style="color:black">Select delivery location : -</h6>
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
					<input type="submit" value="Ok"class="btn btn-primary" >
				</div>
			</div>
			</form>
		</div>
		<div class="col-sm-3">
		</div>
	</div>
	<!-------------------------Contents ends here--------------------------------->
<%@ include file="footer.jsp"%>