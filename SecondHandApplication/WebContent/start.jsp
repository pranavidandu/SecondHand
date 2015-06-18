<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	HttpSession hs = request.getSession();
	String email = (String) hs.getAttribute("emailid");
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
<title>Second Hand</title>
<style type="text/css">
.submitbtn {
	position: absolute;
	top: 24px;
	left: 710px;
}

.header {
	height: 40px;
	text-align: center;
}

.drop {
	height: 20px;
}

.tablediv {
	height: 300px;
}

.pagediv {
	position: absolute;
	width: 800px;
	height: 600px;
	z-index: 15;
	top: 38%;
	left: 33%;
	margin: -100px 0 0 -150px;
	background: #DFF2BF;
}

.griddiv {
	position: absolute;
	width: 100px;
	height: 200px;
	z-index: 15;
	top: 35%;
	left: 33%;
	margin: -100px 0 0 -150px;
	background: #DFF2BF;
}

.jumbotron {
	width: 150px;
	height: 150px;
	left: 30%;
	background-color: red;
}

.searchbox {
	width: 200px;
}

.footer {
	position: absolute;
	top: 900px;
	left: 350px;
}
</style>
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
			<%
				if (email == null) {
					out.print("<ul class=\"nav navbar-nav navbar-right\">");
					out.print("<li><a href=\"signup.jsp\"><span class=\"glyphicon glyphicon-user\" style=\"font-size: 50px;\"></span> Sign Up</a></li>");
					out.print("<li><a href=\"login.jsp\"><span class=\"glyphicon glyphicon-log-in\" style=\"font-size: 50px;\"></span>Login</a></li>");
					out.print("</ul>");
				}
				else {
					out.print(email);
					out.print("<ul class = \"nav navbar-nav navbar-right\">");
					out.print("<li><a href=\"LogoutController\"><span class=\"glyphicon glyphicon-user\" style=\"font-size: 50px;\"></span>Logout</a></li>");
					out.print("</ul>");
				}
			%>
		</div>
	</div>
	</nav>
	<div class="page-header header">
		<h1>
			<p class="sansserif">SecondHand.com</p>
		</h1>
		<div class="dropdown" style="font-size: 20px;" align="right">
			<input name="item" class="dropdown-toggle" data-toggle="dropdown"><span
				class="caret"></span>
			<ul class="dropdown-menu dropdown-menu-right">
				<li><a tabindex="-1" href="show.jsp?category=Mobile">Mobiles
						& Tablets</a></li>
				<li><a tabindex="-1" href="show.jsp?category=RealEstate">Real
						Estate</a></li>
				<li><a tabindex="-1" href="show.jsp?category=Books">Books</a></li>
				<li><a tabindex="-1" href="show.jsp?category=Books">Books</a></li>
				<li class="divider"></li>
				<li><a tabindex="-1" href="mobiles.jsp">All Categories</a></li>
			</ul>
			<button type="submit" class="btn btn-xs btn-success">
				<span class="glyphicon glyphicon-search"
					style="color: white; font-size: 30px;"></span>
			</button>
		</div>
	</div>
	<div class="container pagediv">
		<div class="container-fluid">
			<h3>To By Or Find Anything Select An Option Below :</h3>
			<div class="row">
				<div class="col-sm-4" style="background-color: #DFF2BF;">
					<p>
						<a href="mobiles.jsp"><img src="./IMG/mobile.png"
							style="width: 150px; height: 130px;"> <br>
							<h4>Mobiles & Tablets</h4></a>
					</p>
				</div>
				<div class="col-sm-4" style="background-color: #DFF2BF;">
					<p>
						<a href="electronics.jsp"><img src="./IMG/laptop.png"
							style="width: 150px; height: 130px;"> <br>
							<h4>Electronics and computers</h4></a>
				</div>
				<div class="col-sm-4" style="background-color: #DFF2BF;">
					<p>
						<a href="vehicles.jsp"><img src="./IMG/car.png"
							style="width: 150px; height: 130px;"> <br>
							<h4>Vehicles</h4></a>
					</p>

				</div>

			</div>
			&nbsp;
			<div class="row">
				<div class="col-sm-4" style="background-color: #DFF2BF;">
					<p>
						<a href="home.jsp"><img src="./IMG/sofaa.png"
							style="width: 150px; height: 130px;"> <br>
							<h4>Home & furniture</h4></a>
					</p>

				</div>
				<div class="col-sm-4" style="background-color: #DFF2BF;">
					<p>
						<a href="animals.jsp"><img src="./IMG/dog.png"
							style="width: 150px; height: 130px;"> <br>
							<h4>Animals</h4></a>
					</p>

				</div>
				<div class="col-sm-4" style="background-color: #DFF2BF;">
					<p>
						<a href="books.jsp"><img src="./IMG/books.png"
							style="width: 150px; height: 130px;"> <br>
							<h4>Books, Sports & Hobbies</h4></a>
					</p>

				</div>

			</div>
			&nbsp;
			<div class="row">
				<div class="col-sm-4" style="background-color: #DFF2BF;">
					<p>
						<a href="fashion.jsp"><img src="./IMG/watch.png"
							style="width: 100px; height: 130px;"> <br>
							<h4>Fashion & Beauty</h4></a>
					</p>

				</div>
				<div class="col-sm-4" style="background-color: #DFF2BF;">
					<p>
						<a href="kids.jsp"><img src="./IMG/toys.png"
							style="width: 150px; height: 130px;"> <br>
							<h4>Kids & Baby Products</h4></a>
					</p>

				</div>
				<div class="col-sm-4" style="background-color: #DFF2BF;">
					<p>
						<a href="services.jsp"><img src="./IMG/chef.png"
							style="width: 120px; height: 130px;"> <br>
							<h4>Services</h4></a>
					</p>
				</div>
			</div>
		</div>
	</div>
	<table>
		<tr>
			<td><footer class="footer">
				<h4 style="color: black">Designed and Developed by Flora Moses,
					Pranavi Dandu and Naga Purnika from Computer Science and
					Engineering</h4>
				</footer>
		</tr>
	</table>
</body>
</html>