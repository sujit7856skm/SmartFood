<%@ include file="login_header.jsp" %>
<div class="container" style="width:350px;margin:auto;margin-top:20px; margin-bottom:10px; border:1px solid blue; border-radius:10px;">
<h3 class="text-primary" style="text-align:center; font-family:Monotype Corsiva; margin-top:5px;">Login Form</h3>
<hr style="margin-top:0px;">
<!-- ---------message start hare------------ -->
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
<!-- ---------message end hare------------ -->


<!-- ---------Login form start hare------------ -->
<form action="login_db.jsp" method="post">
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-5 col-form-label text-primary">Email / Phone</label>
    <div class="col-sm-12">
      <input type="text" name="email" class="form-control" id="inputEmail3" placeholder="Enter your Email or Phone" required="required">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword3" class="col-sm-5 col-form-label text-primary">Password</label>
    <div class="col-sm-12">
      <input type="password" name="password" class="form-control" id="inputPassword3" placeholder="Password" required="required">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword3" class="col-sm-5 col-form-label text-primary">Type</label>
    <div class="col-sm-12">
   		<select onchange="fetchState(this.value)" name="type" class="mr-2" style="width:40%;border:1px solid blue">
			<option>Select type</option>
			<option value="user">user</option>
			<option value="vendor">Vender</option>
			<option value="admin">Admin</option>
		</select> </div>
  </div>
  <div class="form-group row">
    <div class="col-sm-10">
      <button type="submit" class="btn btn-primary">Sign in</button>
      <button type="reset" class="btn btn-primary mx-3">Reset</button>
    </div>
  </div>
  
  <div class="form-group row">
  <div class="col-sm-12">
  <a href="forgetpass.jsp" class="mx-3" style="color:blue;">ForgotPassword</a>
  </div>
  </div>
  
</form>
<!-- ---------Login form end hare------------ -->
</div>
<%@ include file="footer.jsp" %>