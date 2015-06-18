<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String category = request.getParameter("category");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
.logo {
	position: absolute;
	top: 20px;
	left: 20px;
}
.submitbtn {
	position: absolute;
	top: 26px;
    left:  730px;
}
.showcase {
	with: 800px;
}
</style>
<title>Insert title here</title>
</head>
<body>
<div class = "logo"><img src = "./IMG/logo.PNG" style = "width: 220px; height: 160px;"></div>
<div class = "submitbtn"><a href = "submitanad.jsp"><button type="button" class="btn btn-primary btn-md">Submit An Ad</button></a></div>
<div class = "well well-lg menu">
<form action = "SearchController">
<table align = "right">
<tr>
<!-- <td><input name = "item" type = "text" placeholder = "What are you looking for?" style = "width: 200px; height: 35px;"></td> -->
<td>
<div class = "pull-right">
<div class="dropdown">
    <input name = "item" class = "dropdown-toggle" data-toggle="dropdown"><span class="caret"></span>
    <ul class="dropdown-menu">
      <li><a tabindex="-1" href="show.jsp">Mobiles</a></li>
      <li><a tabindex="-1" href="show.jsp">Real Estate</a></li>
      <li><a tabindex="-1" href="show.jsp">Books</a></li>
      <li class="divider"></li>
      <li><a tabindex="-1" href="show.jsp">All Categories</a></li>
    </ul>
</div>
</div>
</td>
<td>&nbsp;</td>
<td><button type="submit" class="btn btn-xs btn-success"><span class = "glyphicon glyphicon-search" style = "color: white; font-size: 29px;"></span></button></td>
</tr>
</table>
</form>
<a href = "login.jsp">
<span class = "glyphicon glyphicon-user user1" style = "color: blue; font-size: 22px;"></span>
<p class = "account" style = "font-size: 22px; color: blue;">My Account</p>
</a>
</div>
<div class = "showcase">

</div>
</body>
</html>