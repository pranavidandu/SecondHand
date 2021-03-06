<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	HttpSession hs = request.getSession();
	String email = (String) hs.getAttribute("emailid");
	String status = request.getParameter("status");
	if (status != null) {
		out.print("<script>alert(\"" + status + "\")</script>");
	}
	String admessage = request.getParameter("admessage");
	if (admessage != null) {
		out.print("<script>alert(\"" + admessage + "\")</script>");
	}
	String logoutmessage = request.getParameter("logoutmessage");
	if (logoutmessage != null) {
		out.print("<script>alert(\"" + logoutmessage + "\")</script>");
	}
	if(email != null) {
		String[] strings = email.split("@");
		String name = strings[0];
		out.print("<center><h3>Welcome "+ name + "</h3></center>");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
</style>
<title>Second Hand</title>
<link rel="stylesheet"
	src="/SecondHandApplication/WebContent/styling.css">
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
					out.print("<li><a href=\"signup.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-user\" style=\"font-size: 50px; color: #31B94D;\"></span> Sign Up</a></li>");
					out.print("<li><a href=\"login.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-log-in\" style=\"font-size: 50px; color: #31B94D;\"></span> Login</a></li>");
					out.print("</ul>");
				} else if (email.equalsIgnoreCase("admin@gmail.com")) {
					out.print("<ul class = \"nav navbar-nav navbar-right\">");
					out.print("<li><a href=\"AdminController\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-stats\" style=\"font-size: 50px; color: #19A347;\"></span> Admin Statistics</a></li>");
					out.print("<li><a href=\"ManageAd.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-pencil\" style=\"font-size: 50px; color: #19A347;\"></span> Manage Your Ads</a></li>");
					out.print("<li><a href=\"aboutus.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-info-sign\" style=\"font-size: 50px; color: #19A347;\"></span> About us</a></li>");
					out.print("<li><a href=\"LogoutController\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-log-out\" style=\"font-size: 50px; color: #31B94D;\"></span> Logout</a></li>");
					out.print("</ul>");
				} else {
					out.print("<ul class = \"nav navbar-nav navbar-right\">");
					out.print("<li><a href=\"AdminController\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-stats\" style=\"font-size: 50px; color: #19A347;\"></span> Statistics</a></li>");
					out.print("<li><a href=\"ManageAd.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-pencil\" style=\"font-size: 50px; color: #19A347;\"></span> Manage Your Ads</a></li>");
					out.print("<li><a href=\"aboutus.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-info-sign\" style=\"font-size: 50px; color: #19A347;\"></span> About us</a></li>");
					out.print("<li><a href=\"LogoutController\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-log-out\" style=\"font-size: 50px; color: #31B94D;\"></span> Logout</a></li>");
					out.print("</ul>");
				}
			%>
		</div>
	</div>
	</nav>
	<div class="page-header">
		<h1 class="sansserif" align="center">SecondHand.com</h1>
	</div>
	<center>
	<div class="container pagediv">
		<h3>To buy or find anything select a category below :</h3>
		<div class="container-fluid" align="center" style="color: green;">
			<div class="row">
				<div class="col-sm-3" style="background-color: #DFF2BF;">
					<p>
						<a href="mobiles.jsp"><img src="./IMG/mobile.png"
							style="width: 150px; height: 130px;"> <br>
							<h4>Mobiles & Tablets</h4></a>
					</p>
				</div>
				<div class="col-sm-3" style="background-color: #DFF2BF;">
					<p>
						<a href="electronics.jsp"><img src="./IMG/laptop.png"
							style="width: 150px; height: 130px;"> <br>
							<h4>Electronics</h4></a>
				</div>
				<div class="col-sm-3" style="background-color: #DFF2BF;">
					<p>
						<a href="vehicles.jsp"><img src="./IMG/car.png"
							style="width: 150px; height: 130px;"> <br>
							<h4>Vehicles</h4></a>
					</p>

				</div>

			</div>
			&nbsp;
			<div class="row">
				<div class="col-sm-3" style="background-color: #DFF2BF;">
					<p>
						<a href="home.jsp"><img src="./IMG/sofaa.png"
							style="width: 150px; height: 130px;"> <br>
							<h4>Home & furniture</h4></a>
					</p>

				</div>
				<div class="col-sm-3" style="background-color: #DFF2BF;">
					<p>
						<a href="animals.jsp"><img src="./IMG/dog.png"
							style="width: 150px; height: 130px;"> <br>
							<h4>Animals</h4></a>
					</p>

				</div>
				<div class="col-sm-3" style="background-color: #DFF2BF;">
					<p>
						<a href="books.jsp"><img src="./IMG/books.png"
							style="width: 150px; height: 130px;"> <br>
							<h4>Sports & Hobbies</h4></a>
					</p>

				</div>

			</div>
			&nbsp;
			<div class="row">
				<div class="col-sm-3" style="background-color: #DFF2BF;">
					<p>
						<a href="fashion.jsp"><img src="./IMG/watch.png"
							style="width: 100px; height: 130px;"> <br>
							<h4>Fashion & Beauty</h4></a>
					</p>

				</div>
				<div class="col-sm-3" style="background-color: #DFF2BF;">
					<p>
						<a href="kids.jsp"><img src="./IMG/toys.png"
							style="width: 150px; height: 130px;"> <br>
							<h4>Kid Products</h4></a>
					</p>

				</div>
				<div class="col-sm-3" style="background-color: #DFF2BF;">
					<p>
						<a href="services.jsp"><img src="./IMG/chef.png"
							style="width: 120px; height: 130px;"> <br>
							<h4>Services</h4></a>
					</p>
				</div>
			</div>
		</div>
	</div>
	</center>
	<table align="center">
		<tr>
			<td><footer class="footer">
				<h4 align="center"
					style="color: black; position: absolute; top: 900px; left: 50px;">
					Designed and Developed by Flora Moses, Pranavi Dandu and Naga
					Purnika <br /> from Computer Science and Engineering Department
				</h4>
				</footer>
		</tr>
	</table>
</body>
</html>