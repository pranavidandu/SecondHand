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
	<div class="well well-lg menu">
		<form action="SearchController">
			<table align="right">
				<tr>
					<td>
						<div class="pull-right">
							<div class="dropdown">
								<input name="item" class="dropdown-toggle"
									data-toggle="dropdown"><span class="caret"></span>
								<ul class="dropdown-menu">
									<li><a tabindex="-1" href="show.jsp?category=Mobile">Mobiles</a></li>
									<li><a tabindex="-1" href="show.jsp?category=RealEstate">Real
											Estate</a></li>
									<li><a tabindex="-1" href="show.jsp?category=Books">Books</a></li>
									<li class="divider"></li>
									<li><a tabindex="-1" href="productdisplay.jsp">All
											Categories</a></li>
								</ul>
							</div>
						</div>
					</td>
					<td>&nbsp;</td>
					<td><button type="submit" class="btn btn-xs btn-success">
							<span class="glyphicon glyphicon-search"
								style="color: white; font-size: 29px;"></span>
						</button></td>
				</tr>
			</table>
		</form>
		<a href="login.jsp"> <span class="glyphicon glyphicon-user user1"
			style="color: blue; font-size: 22px;"></span>
			<p class="account" style="font-size: 22px; color: blue;">My
				Account</p>
		</a>
	</div>
	<div class="col-md-3">
		<ul class="nav nav-pills nav-stacked">
			<li><a href="mobiles.jsp">Mobiles and Tablets</a></li>
			<li><a href="electronics.jsp">Electronics and Appliances</a></li>
			<li class="active"><a href="vehicles.jsp">Vehicles</a></li>
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
	<h3>Vehicles</h3>
	<hr>
	<div>
		<table>
			<tr>
				<td><img src="./IMG/car.png"
					style="width: 140px; height: 120px;"> <br> <br>
					<h4 align="center">Cars</h4></td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td><img src="./IMG/bike.png"
					style="width: 140px; height: 120px;"> <br> <br>
					<h4 align="center">Motorcycle</h4></td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td><img src="./IMG/scootor.png"
					style="width: 140px; height: 120px;"> <br> <br>
					<h4 align="center">Scooters</h4></td>
			</tr>
			<tr>
				<td><img src="./IMG/cycle.png"
					style="width: 140px; height: 120px;"> <br> <br>
					<h4 align="center">Bicycles</h4></td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td><img src="./IMG/lorry.png"
					style="width: 140px; height: 120px;"> <br> <br>
					<h4 align="center">Commercial Vehicles</h4></td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td><img src="./IMG/tyres.png"
					style="width: 140px; height: 120px;"> <br> <br>
					<h4 align="center">Spare Parts</h4></td>
			</tr>
			<tr>
				<td><img src="./IMG/auto.png"
					style="width: 140px; height: 120px;"> <br> <br>
					<h4 align="center">Other vehicles</h4></td>
			</tr>
		</table>
	</div>
</body>
</html>