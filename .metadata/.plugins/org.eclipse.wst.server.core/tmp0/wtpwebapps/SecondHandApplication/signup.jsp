<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String msg = request.getParameter("msg");
	if (msg != null) {
		out.print("<h3>" + msg + "</h3>");
	}
	String msg1 = request.getParameter("msg1");
	if(msg1 != null) {
		out.print("<h3>"+ msg1 +"</h3>");
	}
	String pwdmsg = request.getParameter("pwdmssg");
	if (pwdmsg != null) {
		out.print("<h3>" + pwdmsg + "</h3>");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	src="/SecondHandApplication/WebContent/styling.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SecondHand</title>
<script type="text/javascript">
	function validate() {
		String pass1 = request.getParameter("password1");
		String pass2 = request.getParameter("password2");
		if(pass1 != pass2) {
			alert("Passwords doesn't match. Try again.");
		}
	}
</script>
</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid ">

		<div>
			<ul class="nav navbar-nav">

				<li class="active"><a href="submitanad.jsp"><button
							type="button" class="btn btn-success btn-lg">Submit An
							Ad</button></a></li>

			</ul>

		</div>
	</div>
	</nav>
	<div class="page-header header">
		<h1>
			<p class="sansserif" align="center">SecondHand.com</p>
		</h1>
	</div>
	<center>
		<h2>SignUp here</h2>
	</center>
	<br>
	<form class="form-horizontal" action="SignupController" onsubmit="validate()">
		<div class="form-group">
			<label class="control-label col-md-4">Email:</label>
			<div class="col-md-offset-4 col-md-6">
				<div class="input-group input-group-lg">

					<span class="input-group-addon"> <span
						class="glyphicon glyphicon-envelope" style="color: #31B94D"></span>

					</span> <input type="email" name="email" class="form-control"
						placeholder="Enter email" required>

				</div>
				<!-- <input type="email" name = "email" class="form-control" placeholder="Enter email" required> -->
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-md-4" for="pwd">Password:</label>
			<div class="col-md-offset-4 col-md-6">
				<div class="input-group input-group-lg">

					<span class="input-group-addon"> <span
						class="glyphicon glyphicon-lock" style="color: #31B94D"></span>

					</span> <input type="password" class="form-control" name="password1"
						placeholder="Enter password" required>

				</div>

			</div>
		</div>
<!-- 		<div class="form-group">
			<label class="control-label col-md-4" for="pwd">Re-enter
				Password:</label>
			<div class="col-md-offset-4 col-md-6">

				<div class="input-group input-group-lg">

					<span class="input-group-addon"> <span
						class="glyphicon glyphicon-lock" style="color: #31B94D"></span>

					</span> <input type="password" class="form-control" name="password2"
						placeholder="Enter password" required>

				</div> -->
				<div class="alert alert-warning">
					<strong> <%
 	String message = request.getParameter("message");
 	if (message != null) {
 		out.print("<h2>" + message + "</h2>");
 	}
 %>
					</strong>
				</div>
			</div>
		</div>
		<div class="form-group">
			<div class="col-md-offset-4 col-md-7">
				<button type="submit" class="btn btn-success">Sign Up</button>
			</div>
		</div>
	</form>
	<center></center>
</body>
</html>