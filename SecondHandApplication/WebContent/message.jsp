<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String email1 = request.getParameter("email1");
	HttpSession hs = request.getSession();
	String email = (String) hs.getAttribute("emailid");
	String adtitle = request.getParameter("adtitle");
	if (email == null) {
		response.sendRedirect("login.jsp");
	}
	if (email1 == null) {
		email1 = request.getParameter("fromemail1");
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
				if (email == null) {
					out.print("<ul class=\"nav navbar-nav navbar-right\">");
					out.print("<li><a href=\"start.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-home\" style=\"font-size: 50px; color:#31B94D;\"></span>Home</a></li>");
					out.print("<li><a href=\"signup.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-user\" style=\"font-size: 50px; color: #31B94D;\"></span> Sign Up</a></li>");
					out.print("<li><a href=\"login.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-log-in\" style=\"font-size: 50px; color: #31B94D;\"></span> Login</a></li>");
					out.print("</ul>");
				} else {
					out.print(email);
					out.print("<ul class = \"nav navbar-nav navbar-right\">");
					out.print("<li><a href=\"start.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-home\" style=\"font-size: 50px; color:#31B94D;\"></span>Home</a></li>");
					out.print("<li><a href=\"LogoutController\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-log-out\" style=\"font-size: 50px; color: #31B94D;\"></span> Logout</a></li>");
					out.print("</ul>");
				}
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
		<h2>Message here</h2>
	</center>
	<br>
	<form class="form-horizontal" action="MessageController">
		<div class="form-group">
			<label class="control-label col-md-4">From:</label>
			<div class="col-md-offset-4 col-md-6">
				<div class="input-group input-group-lg">
					<span class="input-group-addon"> <span
						class="glyphicon glyphicon-envelope" style="color: #31B94D"></span>

					</span> <input type="text" name="fromemail" class="form-control"
						value="<%=email%>" readonly="readonly">
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-md-4">To:</label>
			<div class="col-md-offset-4 col-md-6">
				<div class="input-group input-group-lg">

					<span class="input-group-addon"> <span
						class="glyphicon glyphicon-envelope" style="color: #31B94D"></span>

					</span> <input type="text" name="toemail" class="form-control"
						value="<%=email1%>" readonly="readonly">
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-md-4" for="pwd">Message:</label>
			<div class="col-md-offset-4 col-md-6">
				<div class="input-group input-group-lg">

					<span class="input-group-addon"> <span
						class="glyphicon glyphicon-lock" style="color: #31B94D"></span>
					</span>
					<textarea class="form-control" rows="6" name="message" required></textarea>
				</div>
			</div>
		</div>
		<div class="form-group">
			<div class="col-md-offset-4 col-md-7">
				<button type="submit" class="btn btn-success btn-md">Send</button>
			</div>
		</div>
	</form>
</body>
</html>