
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
</style>
</head>
<body>
	<div class="page-header header">
		<h1>
			<p class="sansserif">SecondHand.com</p>
		</h1>
	</div>
<body>

	<nav class="navbar navbar-inverse">
	<div class="container-fluid ">

		<div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="submitanad.jsp"><button
							type="button" class="btn btn-success btn-md">Submit An
							Ad</button></a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><div class="dropdown" style="font-size: 30px;">
						<input name="item" class="dropdown-toggle" data-toggle="dropdown"><span
							class="caret"></span>
						<ul class="dropdown-menu">
							<li><a tabindex="-1" href="show.jsp?category=Mobile">Mobiles</a></li>
							<li><a tabindex="-1" href="show.jsp?category=RealEstate">Real
									Estate</a></li>
							<li><a tabindex="-1" href="show.jsp?category=Books">Books</a></li>
							<li class="divider"></li>
							<li><a tabindex="-1" href="mobiles.jsp">All Categories</a></li>
						</ul>
						<button type="submit" class="btn btn-xs btn-success">
							<span class="glyphicon glyphicon-search"
								style="color: white; font-size: 40px;"></span>
						</button>
					</div></li>
				<li><a href="signup.jsp"><span
						class="glyphicon glyphicon-user" style="font-size: 50px;"></span>
						Sign Up</a></li>
				<li><a href="login.jsp"><span
						class="glyphicon glyphicon-log-in" style="font-size: 50px;"></span>
						Login</a></li>

			</ul>
		</div>
	</div>
	</nav>
	<%
		String name;
		email = (String) hs.getAttribute("email");
		if (email == null) {
			name = "My Account";
		} else {
			name = email;
			name = name.substring(0, name.lastIndexOf("@"));
		}
	%>
	<div class="container pagediv">
		<div class="container-fluid">
			<h3>To By Or Find Anything Select An Option Below :</h3>
			<div class="row">
				<div class="col-sm-4" style="background-color: #DFF2BF;">
					<p>
						<button type="submit" class="btn btn-lg"
							style="background-color: #DFF2BF;">
							<span class="glyphicon glyphicon-home "
								style="color: green; font-size: 100px;"></span> <br> Real
							Estate
						</button>
					</p>
				</div>
				<div class="col-sm-4" style="background-color: #DFF2BF;">
					<p>
						<button type="submit" class="btn btn-lg"
							style="background-color: #DFF2BF;">
							<span class="glyphicon glyphicon-headphones"
								style="color: green; font-size: 100px;"></span> <br>
							Entertainment
						</button>
					</p>
				</div>
				<div class="col-sm-4" style="background-color: #DFF2BF;">
					<p>
						<button type="submit" class="btn btn-lg "
							style="background-color: #DFF2BF;">
							<span class="glyphicon glyphicon-facetime-video"
								style="color: green; font-size: 100px;"></span> <br> Videos
						</button>
					</p>
				</div>

			</div>
			&nbsp;
			<div class="row">
				<div class="col-sm-4" style="background-color: #DFF2BF;">
					<p>
						<button type="submit" class="btn btn-lg "
							style="background-color: #DFF2BF;">
							<span class=" glyphicon glyphicon-phone"
								style="color: green; font-size: 100px;"></span> <br> Mobiles<br>
							& Tablets
						</button>
					</p>
				</div>
				<div class="col-sm-4" style="background-color: #DFF2BF;">
					<p>
						<button type="submit" class="btn btn-lg "
							style="background-color: #DFF2BF;">
							<span class=" glyphicon glyphicon-book"
								style="color: green; font-size: 100px;"></span> <br> Books
						</button>
					</p>
				</div>
				<div class="col-sm-4" style="background-color: #DFF2BF;">
					<p>
						<button type="submit" class="btn btn-lg "
							style="background-color: #DFF2BF;">
							<span class="glyphicon glyphicon-camera"
								style="color: green; font-size: 100px;"></span> <br> Cameras
						</button>
					</p>
				</div>

			</div>
			&nbsp;
			<div class="row">
				<div class="col-sm-4" style="background-color: #DFF2BF;">
					<p>
						<button type="submit" class="btn btn-lg "
							style="background-color: #DFF2BF;">
							<span class="glyphicon glyphicon-bed"
								style="color: green; font-size: 100px;"></span> <br>
							Furnitures
						</button>
					</p>
				</div>
				<div class="col-sm-4" style="background-color: #DFF2BF;">
					<p>
						<button type="submit" class="btn btn-lg"
							style="background-color: #DFF2BF;">
							<span class="glyphicon glyphicon-lamp"
								style="color: green; font-size: 100px;"></span> <br>
							Interiors
						</button>
					</p>
				</div>
				<div class="col-sm-4" style="background-color: #DFF2BF;">
					<p>
						<button type="submit" class="btn btn-lg"
							style="background-color: #DFF2BF;">
							<span class=" glyphicon glyphicon-pencil"
								style="color: green; font-size: 100px;"></span><br>Stationary
						</button>
					</p>
				</div>
			</div>
		</div>
	</div>
	<!-- <div class="container tablediv">
		<table class="table table-striped table-bordered">
			<tr>
				<td align="center" style="font-size: 18px;"><span
					class="glyphicon glyphicon-home"
					style="color: blue; font-size: 40px;"></span> <br> Real Estate
				</td>
				<td align="center" style="font-size: 18px;"><span
					class="glyphicon glyphicon-headphones"
					style="color: blue; font-size: 40px;"></span> <br>
					Entertainment</td>
				<td align="center" style="font-size: 18px;"><span
					class="glyphicon glyphicon-facetime-video"
					style="color: blue; font-size: 40px;"></span> <br> Videos</td>
			</tr>
			<tr>
				<td align="center" style="font-size: 18px;"><span
					class=" glyphicon glyphicon-phone"
					style="color: blue; font-size: 40px;"></span> <br> Mobiles &
					Tablets</td>
				<td align="center" style="font-size: 18px;"><span
					class=" glyphicon glyphicon-book"
					style="color: blue; font-size: 40px;"></span> <br> Books</td>
				<td align="center" style="font-size: 18px;"><span
					class="glyphicon glyphicon-camera"
					style="color: blue; font-size: 40px;"></span> <br> Cameras</td>
			</tr>
			<tr>
				<td align="center" style="font-size: 18px;"><span
					class="glyphicon glyphicon-bed"
					style="color: blue; font-size: 40px;"></span> <br> Furnitures
				</td>
				<td align="center" style="font-size: 18px;"><span
					class="glyphicon glyphicon-lamp"
					style="color: blue; font-size: 40px;"></span> <br> Interiors</td>
				<td align="center" style="font-size: 18px;"><span
					class=" glyphicon glyphicon-pencil"
					style="color: blue; font-size: 40px;"></span> <br>
					Stationaries</td>
			</tr>
		</table>
	</div> -->

</body>
</html>
</body>
</html>



<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
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

.tablediv {
	height: 00px;
	width: 800px;
}

.logo {
	position: absolute;
	top: 20px;
	left: 20px;
}

.submitbtn {
	position: absolute;
	top: 24px;
	left: 710px;
}
</style>
</head>
<body>
	<div class="logo">
		<!-- <img src="./IMG/logo.PNG" style="width: 220px; height: 100px;"> -->
		<img src="./IMG/logo.PNG" style="width: 150px; height: 100px;">
	</div>
	<!-- <div class="submitbtn">
		<a href="submitanad.jsp"><button type="button"
				class="btn btn-primary btn-lg">Submit An Ad</button></a>
	</div> -->
	<div class="well well-lg menu">
		<form action="SearchController">
			<table align="right">
				<tr>
					<td><div class="submitbtn">
							<a href="submitanad.jsp"><button type="button"
									class="btn btn-primary btn-lg">Submit An Ad</button></a>
						</div></td>
					<!-- <td><input name = "item" type = "text" placeholder = "What are you looking for?" style = "width: 200px; height: 35px;"></td> -->
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
									<li><a tabindex="-1" href="mobiles.jsp">All Categories</a></li>
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
		<%
			String name;
			email = (String) hs.getAttribute("email");
			if (email == null) {
				name = "My Account";
			} else {
				name = email;
				name = name.substring(0, name.lastIndexOf("@"));
			}
		%>
		<a href="login.jsp"> <span class="glyphicon glyphicon-user user1"
			style="color: blue; font-size: 22px;"></span>
			<p class="account" style="font-size: 22px; color: blue;">My
				Account</p>
		</a>
	</div>
	<div class="container tablediv">
		<table class="table table-striped table-bordered">
			<tr>
				<td align="center" style="font-size: 18px;"><span
					class="glyphicon glyphicon-home"
					style="color: blue; font-size: 40px;"></span> <br> Real Estate
				</td>
				<td align="center" style="font-size: 18px;"><span
					class="glyphicon glyphicon-headphones"
					style="color: blue; font-size: 40px;"></span> <br>
					Entertainment</td>
				<td align="center" style="font-size: 18px;"><span
					class="glyphicon glyphicon-facetime-video"
					style="color: blue; font-size: 40px;"></span> <br> Videos</td>
			</tr>
			<tr>
				<td align="center" style="font-size: 18px;"><span
					class=" glyphicon glyphicon-phone"
					style="color: blue; font-size: 40px;"></span> <br> Mobiles &
					Tablets</td>
				<td align="center" style="font-size: 18px;"><span
					class=" glyphicon glyphicon-book"
					style="color: blue; font-size: 40px;"></span> <br> Books</td>
				<td align="center" style="font-size: 18px;"><span
					class="glyphicon glyphicon-camera"
					style="color: blue; font-size: 40px;"></span> <br> Cameras</td>
			</tr>
			<tr>
				<td align="center" style="font-size: 18px;"><span
					class="glyphicon glyphicon-bed"
					style="color: blue; font-size: 40px;"></span> <br> Furnitures
				</td>
				<td align="center" style="font-size: 18px;"><span
					class="glyphicon glyphicon-lamp"
					style="color: blue; font-size: 40px;"></span> <br> Interiors</td>
				<td align="center" style="font-size: 18px;"><span
					class=" glyphicon glyphicon-pencil"
					style="color: blue; font-size: 40px;"></span> <br>
					Stationaries</td>
			</tr>
		</table>
	</div>
</body>
</html> 

 --%>