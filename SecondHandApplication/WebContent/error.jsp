<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isErrorPage="true"%>
<%-- <%
    String msg = request.getParameter("errormsg");
    if(msg != null) {
    	out.print("<h3>" + msg + "</h3>");
    }
    %> --%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href='http://fonts.googleapis.com/css?family=Love+Ya+Like+A+Sister'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<style type="text/css">
#font {
	font-family: 'Love Ya Like A Sister', cursive;
}

body {
	background: #eaeaea;
}

.wrap {
	margin: 0 auto;
	width: 1000px;
}

.logo {
	text-align: center;
	/* margin-top: 200px; */
}

.logo img {
	width: 350px;
}

.logo p {
	color: #272727;
	font-size: 40px;
	margin-top: 1px;
}

.logo p span {
	color: lightgreen;
}

.sub a {
	color: #fff;
	background: #272727;
	text-decoration: none;
	padding: 10px 20px;
	font-size: 13px;
	font-family: arial, serif;
	font-weight: bold;
	-webkit-border-radius: .5em;
	-moz-border-radius: .5em;
	-border-radius: .5em;
}

.footer {
	color: black;
	position: absolute;
	right: 10px;
	bottom: 10px;
}

.footer a {
	color: rgb(114, 173, 38);
}
</style>
<title>Second Hand</title>
</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid ">

		<div>

			<%
				out.print("<ul class = \"nav navbar-nav navbar-right\">");
				out.print("<li><a href=\"start.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-home\" style=\"font-size: 50px; color:#31B94D\"></span>Home</a></li>");
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
	<!-- <h1>Some error has been encountered. Try again.</h1> -->
	<div class="wrap">
		<div class="logo">
		<%
    String errorMessage = exception.getMessage();
    %>
    
			<p id = "font">OOPS! - Could not Find it</p>
			<p><%=errorMessage %></p>
			<img src="./IMG/angrybird.jpg" />
			<!-- <p>
				<a href="#">Back </a>
			</p> -->
		</div>
	</div>
</body>
</html>