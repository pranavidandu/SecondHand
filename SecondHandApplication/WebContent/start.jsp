<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
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
	top: 26px;
    left:  730px;
}
</style>
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
      <li><a tabindex="-1" href="show.jsp?category=Mobile">Mobiles</a></li>
      <li><a tabindex="-1" href="show.jsp?category=RealEstate">Real Estate</a></li>
      <li><a tabindex="-1" href="show.jsp?category=Books">Books</a></li>
      <li class="divider"></li>
      <li><a tabindex="-1" href="mobiles.jsp">All Categories</a></li>
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
<div class="container tablediv">           
  <table class="table table-striped table-bordered">
      <tr>
        <td align = "center" style = "font-size: 18px;"><span class = "glyphicon glyphicon-home" style = "color: blue; font-size: 40px;"></span> <br> Real Estate </td>
        <td align = "center" style = "font-size: 18px;"><span class = "glyphicon glyphicon-headphones" style = "color: blue; font-size: 40px;"></span> <br> Entertainment</td>
        <td align = "center" style = "font-size: 18px;"><span class = "glyphicon glyphicon-facetime-video" style = "color: blue; font-size: 40px;"></span> <br> Videos </td>
      </tr>
      <tr>
        <td align = "center" style = "font-size: 18px;"><span class = " glyphicon glyphicon-phone" style = "color: blue; font-size: 40px;"></span> <br> Mobiles & Tablets </td>
        <td align = "center" style = "font-size: 18px;"><span class = " glyphicon glyphicon-book" style = "color: blue; font-size: 40px;"></span> <br> Books </td>
        <td align = "center" style = "font-size: 18px;"><span class = "glyphicon glyphicon-camera" style = "color: blue; font-size: 40px;"></span> <br> Cameras</td>
      </tr>
      <tr>
        <td align = "center" style = "font-size: 18px;"><span class = "glyphicon glyphicon-bed" style = "color: blue; font-size: 40px;"></span> <br> Furnitures </td>
        <td align = "center" style = "font-size: 18px;"><span class = "glyphicon glyphicon-lamp" style = "color: blue; font-size: 40px;"></span> <br> Interiors </td>
        <td align = "center" style = "font-size: 18px;"><span class = " glyphicon glyphicon-pencil" style = "color: blue; font-size: 40px;"></span> <br> Stationaries </td>
      </tr>
  </table>
</div>
</body>
</html>