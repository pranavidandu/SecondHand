<%@page import="com.bvrith.dao.MessageDAO"%>
<%@page import="com.bvrith.beans.MessageBean"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	HttpSession hs = request.getSession();
	String email = (String) hs.getAttribute("emailid");
	MessageDAO messageDAO = new MessageDAO();
	List<MessageBean> lst = messageDAO.mymessages(email);
	ListIterator<MessageBean> list = lst.listIterator();

	String message = request.getParameter("message");
	if (message != null) {
		out.print("<script>alert(\"" + message + "\")</script>");
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

.img {
	width: 350px;
	height: 350px;
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
					out.print("<li><a href=\"LogoutController\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-log-out\" style=\"font-size: 50px; color: #31B94D;\"></span> Logout</a></li>");
					out.print("</ul>");
				}
			%>
		</div>
	</div>
	</nav>
	<div class="page-header header">
		<h1 align="center">SecondHand.com</h1>
	</div>
	<div>
		<form action="FilterController">
			<input type="text" id="from" name="from" style="width: 80px;"
				placeholder="From"> - <input type="text" id="to" name="to"
				style="width: 80px;" placeholder="To">
			<button class="btn btn-success btn-md" onclick="myFunction()">
				<span class="glyphicon glyphicon-filter"></span>
			</button>
		</form>
		<br> <br> <br>
		<center>
			<h2>Messages</h2>
			<br> <br>
			<div style="width: 750px;">
				<table class="table table-striped table-bordered">
					<%
						while (list.hasNext()) {
							MessageBean messageBean = list.next();
							out.print("<tr>");
							out.print("<td>From: " + messageBean.getToemail() + "</td>");
							out.print("<td>Message: " + messageBean.getMessage() + "</td>");
							out.print("<td><a href = \"message.jsp?fromemail1="
									+ messageBean.getToemail()
									+ "\"><button class = \"btn btn-successs btn-lg\"><span class = \"glyphicon glyphicon-repeat\"></span></button></a></td>");
							out.print("<td><a href=\"DeleteMessageController?id="
									+ messageBean.getId()
									+ "\"><button class = \"btn btn-danger btn-md\"><span class=\"glyphicon glyphicon-trash\" style = \"color: white;\"></span></button></a></td>");
							out.print("</tr>");
						}
					%>
				</table>
			</div>
		</center>
	</div>
</body>
</html>