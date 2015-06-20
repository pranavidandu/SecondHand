<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	src="/SecondHandApplication/WebContent/styling.css">
<%
	HttpSession hs = request.getSession();
	String email = (String) hs.getAttribute("emailid");
%>
<title>SecondHand</title>
<style type="text/css">
.menu {
	float: none;
	height: 80px;
}

.account {
	position: absolute;
	top: 25px;
	right: 289px;
}

.user1 {
	position: absolute;
	top: 31px;
	right: 410px;
}
</style>
</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid ">

		<div>
			<ul class="nav navbar-nav">

				<li class="active"><a href="ads.jsp"><button
							type="button" class="btn btn-success btn-lg">Submit An
							Ad</button></a></li>

			</ul>
			<%
			if (email == null) {
				out.print("<ul class=\"nav navbar-nav navbar-right\">");
				out.print("<li><a href=\"start.jsp\"><span class=\"glyphicon glyphicon-home\" style=\"font-size: 50px; color:#31B94D\"></span><p style=\"color:white;\">Home</p></a></li>");
				out.print("<li><a href=\"signup.jsp\"><span class=\"glyphicon glyphicon-user\" style=\"font-size: 50px; color:#31B94D\"></span><p style=\"color:white;\">Sign Up</p></a></li>");
				out.print("<li><a href=\"login.jsp\"><span class=\"glyphicon glyphicon-log-in\" style=\"font-size: 50px; color:#31B94D\"></span><p style=\"color:white;\">Login</p></a></li>");
				out.print("</ul>");
			}
			else {
				out.print("<ul class = \"nav navbar-nav navbar-right\">");
				out.print("<li><a href=\"ManageAd.jsp\"><button type=\"button\" class=\"btn btn-success btn-lg\">View Your Ads</button></a></li>");
				out.print("<li><a href=\"LogoutController\"><span class=\"glyphicon glyphicon-user\" style=\"font-size: 50px; color:#31B94D\"></span><p style=\"color:white;\">Logout</p></a></li>");
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
			<li><a href="mobiles.jsp">Mobiles and Tablets</a></li>
			<li><a href="electronics.jsp">Electronics and Appliances</a></li>
			<li><a href="vehicles.jsp">Vehicles</a></li>
			<li><a href="home.jsp">Home & Furniture</a></li>
			<li><a href="animals.jsp">Animals</a></li>
			<li class="active"><a href="books.jsp">Books, Sports &
					Hobbies</a></li>
			<li><a href="fashion.jsp">Fashion & Beauty</a></li>
			<li><a href="kids.jsp">Kids & Baby Products</a></li>
			<li><a href="services.jsp">Services</a></li>
			<li><a href="jobs.jsp">Jobs</a></li>
			<li><a href="realestate.jsp">Real Estate</a></li>
		</ul>
	</div>
	<h3>Books, Sports & Hobbies</h3>
	<hr>
	<div>
		<table>
			<tr>
				<td><a href="show.jsp?category=Books"><img src="./IMG/books.png"
					style="width: 140px; height: 120px;"> <br> <br>
					<h4 align="center">Books</h4></a></td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td><a href="show.jsp?category=Musical Instruments"><img src="./IMG/guitar.png"
					style="width: 140px; height: 120px;"> <br> <br>
					<h4 align="center">Musical Instruments</h4></a></td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td><a href="show.jsp?category=Sports"><img src="./IMG/ball.png"
					style="width: 180px; height: 120px;"> <br> <br>
					<h4 align="center">Sports</h4></a></td>
			</tr>
			<tr>
				<td><a href="show.jsp?category=Fitness"><img src="./IMG/dumbell.png"
					style="width: 140px; height: 120px;"> <br> <br>
					<h4 align="center">Fitness</h4></a></td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td><a href="show.jsp?category=Coins and Collectibles"><img src="./IMG/coins.png"
					style="width: 140px; height: 120px;"> <br> <br>
					<h4 align="center">Coins and Collectibles</h4></a></td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td><a href="show.jsp?category=Other Hobbies"><img src="./IMG/hobby.png"
					style="width: 140px; height: 120px;"> <br> <br>
					<h4 align="center">Other Hobbies</h4></a></td>
			</tr>
		</table>
	</div>
</body>
</html>