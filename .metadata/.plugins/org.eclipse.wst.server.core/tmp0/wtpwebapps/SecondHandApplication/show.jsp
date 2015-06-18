<%@page import="com.bvrith.dao.SubmitAnAdDAO"%>
<%@page import="com.bvrith.beans.SubmitAnAdBean"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	HttpSession hs = request.getSession();
	String email = (String) hs.getAttribute("emailid");
	String category = request.getParameter("category");
	SubmitAnAdDAO submitAnAdDAO = new SubmitAnAdDAO();
	List<SubmitAnAdBean> lst = submitAnAdDAO.listAds(category);
	ListIterator<SubmitAnAdBean> list = lst.listIterator();
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
	top: 35%;
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

.showcase {
	width: 700px;
	position: absolute;
	top: 200px;
	left: 300px;
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

	<nav class="navbar navbar-inverse ">
	<div class="container-fluid ">

		<div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="submitanad.jsp"><button
							type="button" class="btn btn-success btn-md">Submit An
							Ad</button></a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><div class="dropdown">
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
								style="color: white; font-size: 29px;"></span>
						</button>
					</div></li>
				<li><a href="signup.jsp"><span
						class="glyphicon glyphicon-user" style="font-size: 50px"></span>
						Sign Up</a></li>
				<li><a href="login.jsp"><span
						class="glyphicon glyphicon-log-in" style="font-size: 50px"></span>
						Login</a></li>

			</ul>
		</div>
	</div>
	</nav>
	<div>
	<h3>
	<%=category %>
	</h3>
	</div>
	<div class="showcase">
			<%
			String whatsapp = "";
				while (list.hasNext()) {
					SubmitAnAdBean submitAnAdBean = list.next();
					out.print("<table class="+"table table-bordered table-hover>"+"");
					out.print("<tr>");
					out.print("<td> <h4>Ad Title:</h4>" + submitAnAdBean.getAdtitle() + "</td>");
					out.print("<td> <h4>Category:</h4>" + submitAnAdBean.getCategory() + "</td>");
					out.print("</tr>");
					out.print("<tr>");
					out.print("<td> <h4>Ad Description:</h4>" + submitAnAdBean.getAddescription() + "</td>");
					out.print("<td>" + submitAnAdBean.getPrice() + "</td>");
					out.print("</tr>");
					out.print("<tr>");
					out.print("<td> <h4>Name:</h4>" + submitAnAdBean.getName() + "</td>");
					out.print("<td> <h4>Email:</h4>" + submitAnAdBean.getEmail() + "</td>");
					out.print("<td> <h4>Phone:</h4>" + submitAnAdBean.getPhone() + "</td");
					out.print("</tr>");
					out.print("<tr>");
					if (submitAnAdBean.getWhatsapp().equalsIgnoreCase("y")) {
						whatsapp = "Avaliable";
					}
					else {
						whatsapp = "Not Avaliable";
					}
					out.print("<td> <h4>WhatsApp:</h4>" + whatsapp + "</td>");
					out.print("<td> <h4>City:</h4>" + submitAnAdBean.getCity() + "</td>");
					out.print("</tr>");
					out.print("</table>");
					out.print("<br> <br> <br> ");
				}
			%>
	</div>
</body>
</html>