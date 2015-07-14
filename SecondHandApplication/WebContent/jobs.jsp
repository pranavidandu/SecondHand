<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	src="/SecondHandApplication/WebContent/styling.css">
<title>Second Hand</title>
<%
	HttpSession hs = request.getSession();
	String email = (String) hs.getAttribute("emailid");
%>
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
					out.print("<li><a href=\"ManageAd.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-pencil\" style=\"font-size: 50px; color: #19A347;\"></span> Manage Your Ads</a></li>");
					out.print("<li><a href=\"LogoutController\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-log-out\" style=\"font-size: 50px; color: #31B94D;\"></span> Logout</a></li>");
					out.print("</ul>");
				}
			%>
		</div>
	</div>
	</nav>
	<div class="page-header header">
		<h1>
			<p class="sansserif" align="center">SecondHand.com</p>
		</h1>
	</div>
	<div class="col-md-3">
		<ul class="nav nav-pills nav-stacked">
			<li class="active"><a href="mobiles.jsp">Mobiles and Tablets</a></li>
			<li><a href="electronics.jsp">Electronics and Appliances</a></li>
			<li><a href="vehicles.jsp">Vehicles</a></li>
			<li><a href="home.jsp">Home & Furniture</a></li>
			<li><a href="animals.jsp">Animals</a></li>
			<li><a href="books.jsp">Books, Sports & Hobbies</a></li>
			<li><a href="fashion.jsp">Fashion & Beauty</a></li>
			<li><a href="kids.jsp">Kids & Baby Products</a></li>
			<li><a href="services.jsp">Services</a></li>
			<li><a href="jobs.jsp">Jobs</a></li>
			<li><a href="realestate.jsp">Real Estate</a></li>
		</ul>
	</div>
</body>
</html>