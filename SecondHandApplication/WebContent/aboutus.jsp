<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%
HttpSession hs = request.getSession();
String email = (String) hs.getAttribute("emailid");
if(email == null) {
	response.sendRedirect("login.jsp");
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
@FONT-FACE {
font-family: "myfont";
src: url("./Fonts/black_jack.ttf");
}

.paragraph {
font-family: "myfont";
font-size: 43px;
}

.text {
font-size: 20px;
font-family: sans-serif;
}
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
{
out.print("<ul class = \"nav navbar-nav navbar-right\">");
out.print("<li><a href=\"ManageAd.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-pencil\" style=\"font-size: 50px; color: #19A347;\"></span> Manage Your Ads</a></li>");
out.print("<li><a href=\"LogoutController\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-log-out\" style=\"font-size: 50px; color: #31B94D;\"></span> Logout</a></li>");
out.print("<li><a href=\"start.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-home\" style=\"font-size: 50px; color:#31B94D\"></span><p style=\"color:white;\">Home</p></a></li>");
out.print("<li><a href=\"LogoutController\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-user\" style=\"font-size: 50px; color:#31B94D\"></span><p style=\"color:white;\">Logout</p></a></li>");
out.print("</ul>");
}
%>
</div>
</div>
</nav>
<div class="page-header">
<h1 class="sansserif" align="center">SecondHand.com</h1>
</div>
<h1 align="center">About Us</h1>
<div>
<%
String[] strings = email.split("@");
String name = strings[0];
%>
<h2 class="text-success">
Welcome
<%=name%>
to our site
</h2>
</div>
<br />
<div class="container">
<div class="row">
<div class="col-lg-2">
<img src="./IMG/flora.JPG" class="img-thumbnail"
style="width: 170px; height: 300px;">
</div>
<div class="col-lg-2">
<b><p class="paragraph">Flora</p></b>
<p class="text">- 'Code' is my Oxygen.</p>
<hr>
</div>
<div class="col-lg-2">
<img src="./IMG/pranavi.JPG" class="img-thumbnail"
style="width: 170px; height: 300px;">
</div>
<div class="col-lg-2">
<b><p class="paragraph">Pranavi</p></b>
<p class="text">- Hard Work is the key to my Success.</p>
<hr>
</div>
<div class="col-lg-2">
<img src="./IMG/purnika.png" class="img-thumbnail"
style="width: 170px; height: 300px;">
</div>
<div class="col-lg-2">
<b><p class="paragraph">Purnika</p></b>
<p class="text">- I Communicate with Confidence.</p>
<hr>
</div>
</div>
</div>
</body>
</html>