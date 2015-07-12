<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	HttpSession hs = request.getSession();
	String email = (String) hs.getAttribute("emailid");
	if (email == null) {
		out.print("<h2>Login to see Statistics</h2>");
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
				} else if (email == "admin@gmail.com") {
					out.print("<ul class = \"nav navbar-nav navbar-right\">");
					out.print("<li><a href=\"ManageAd.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-stats\" style=\"font-size: 50px; color: #19A347;\"></span> Admin Statistics</a></li>");
					out.print("<li><a href=\"ManageAd.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-pencil\" style=\"font-size: 50px; color: #19A347;\"></span> Manage Your Ads</a></li>");
					out.print("<li><a href=\"aboutus.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-file\" style=\"font-size: 50px; color: #19A347;\"></span> About us</a></li>");
					out.print("<li><a href=\"LogoutController\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-log-out\" style=\"font-size: 50px; color: #31B94D;\"></span> Logout</a></li>");
					out.print("</ul>");
				} else {
					out.print("<ul class = \"nav navbar-nav navbar-right\">");
					out.print("<li><a href=\"ManageAd.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-stats\" style=\"font-size: 50px; color: #19A347;\"></span> Statistics</a></li>");
					out.print("<li><a href=\"ManageAd.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-pencil\" style=\"font-size: 50px; color: #19A347;\"></span> Manage Your Ads</a></li>");
					out.print("<li><a href=\"aboutus.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-file\" style=\"font-size: 50px; color: #19A347;\"></span> About us</a></li>");
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
	<div class="container" style="width: 800px;">
		<table class="table table-bordered table-striped table-hover">
			<%
				if (email.equalsIgnoreCase("admin@gmail.com")) {
					String ads =request.getParameter("ads");
					String users = request.getParameter("users");
					String sold = request.getParameter("sold");
					String available = request.getParameter("available");
					out.print("<th>No. of Users</th>");
					out.print("<th>No. of Ads</th>");
					out.print("<th>No. of Items Sold</th>");
					out.print("<th>No. of Items Available</th>");
					out.print("<tr>");
					out.print("<td>");
					out.print(users);
					out.print("</td>");
					out.print("<td>");
					out.print(ads);
					out.print("</td>");
					out.print("<td>");
					out.print(sold);
					out.print("</td>");
					out.print("<td>");
					out.print(available);
					out.print("</td>");
					out.print("</tr>");
				} else {
					String ads = request.getParameter("ads");
					String sold = request.getParameter("sold");
					String available = request.getParameter("available");
					out.print("<th>No. of your Ads</th>");
					out.print("<th>No. of your Items Sold</th>");
					out.print("<th>No. of your Items Available</th>");
					out.print("<tr>");
					out.print("<td>");
					out.print(ads);
					out.print("</td>");
					out.print("<td>");
					out.print(sold);
					out.print("</td>");
					out.print("<td>");
					out.print(available);
					out.print("</td>");
					out.print("</tr>");
				}
			%>
		</table>
	</div>
	<table>
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