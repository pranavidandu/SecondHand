<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String status = request.getParameter("status");
	if (status != null) {
		out.print("<script>alert(\""+ status+"\");</script>");
	}

	/* String error = request.getParameter("error");
	if(status != null) {
		out.print("<h3>" + error + "</h3>");
	} */
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
</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid ">

		<div>
			<ul class="nav navbar-nav">

				<li class="active"><a href="ads.jsp"><button type="button"
							class="btn btn-success btn-lg">Submit An Ad</button></a></li>

			</ul>
			<%
				out.print("<ul class=\"nav navbar-nav navbar-right\">");
				out.print("<li><a href=\"start.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-home\" style=\"font-size: 50px; color:#31B94D;\"></span>Home</a></li>");
				out.print("<li><a href=\"signup.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-user\" style=\"font-size: 50px; color: #31B94D;\"></span> Sign Up</a></li>");
				out.print("</ul>");
			%>
		</div>
	</div>
	</nav>
	<div class="page-header">
		<h1>
			<p class="sansserif" align="center">SecondHand.com</p>
		</h1>

	</div>


	<center>
		<h2>Login here</h2>
	</center>
	<br>
	<form class="form-horizontal" action="LoginController">
		<div class="form-group">
			<label class="control-label col-md-4">User:</label>
			<div class="col-md-offset-4 col-md-6">
				<div class="input-group input-group-lg">

					<span class="input-group-addon"> <span
						class="glyphicon glyphicon-envelope" style="color: #31B94D"></span>

					</span> <input type="text" name="email" class="form-control"
						placeholder="Enter email">
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-md-4" for="pwd">Password:</label>
			<div class="col-md-offset-4 col-md-6">
				<div class="input-group input-group-lg">

					<span class="input-group-addon"> <span
						class="glyphicon glyphicon-lock" style="color: #31B94D"></span>

					</span> <input type="password" class="form-control" name="password"
						placeholder="Enter password" required>

				</div>
				<!-- <input type="password" class="form-control" name = "pass" placeholder="Enter password" required> -->
			</div>
		</div>
		<div class="form-group">
			<div class="col-md-offset-4 col-md-7">
				<button type="submit" class="btn btn-success">Login</button>
			</div>
		</div>
	</form>
	<center>
		<h3>
			New User?&nbsp;<a href="signup.jsp" style="color: #31B94D;">Sign
				Up</a>
		</h3>
	</center>
</body>
</html>