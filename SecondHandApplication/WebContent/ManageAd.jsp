<%@page import="com.bvrith.dao.MessageDAO"%>
<%@page import="com.bvrith.dao.AdDAO"%>
<%@page import="com.bvrith.beans.AdBean"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	HttpSession hs = request.getSession();
	String email = (String) hs.getAttribute("emailid");
	String category = request.getParameter("category");
	AdDAO adDAO = new AdDAO();
	List<AdBean> lst = adDAO.listAds1(email);
	ListIterator<AdBean> list = lst.listIterator();
	String message = request.getParameter("message");
	if(message != null) {
		out.print("<script>alert(\" "+message+"\")</script>");
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
<link rel="stylesheet" href="css/fullsizable.css">
<link rel="stylesheet" href="/css/jquery-fullsizable.css" />
<link rel="stylesheet" href="/css/jquery-fullsizable-theme.css" />
<script src="/js/jquery-1.7.2.js"></script>
<script src="/js/jquery.fullsizable.js"></script>

<style type="text/css">
img {
	height: 200px;
	width: 200px;
}
</style>
<title>Second Hand</title>
<link rel="stylesheet"
	src="/SecondHandApplication/WebContent/styling.css">
</head>
<body>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid ">

		<div>
			<ul class="nav navbar-nav">

				<li class="active"><a href="ads.jsp"><button type="button"
							class="btn btn-success btn-lg">Submit An Ad</button></a></li>

			</ul>
			<% 
            MessageDAO messageDAO = new MessageDAO();
			int number = messageDAO.noOfMessages(email);
			%>
			<ul class="nav navbar-nav">
				<li class="active"><a href="showmessage.jsp"><button
							type="button" class="btn btn-success btn-lg"  <%-- onclick="<%number  = 0;%>" --%>>Messages  <span class="badge"><%=number %></span></button></a></li>
			</ul>
			<%
				if (email == null) {
									out.print("<ul class=\"nav navbar-nav navbar-right\">");
									out.print("<li><a href=\"start.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-home\" style=\"font-size: 50px; color:#31B94D\"></span><p style=\"color:white;\"> Home</p></a></li>");
									out.print("<li><a href=\"signup.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-user\" style=\"font-size: 50px; color:#31B94D\"></span><p style=\"color:white;\"> Sign Up</p></a></li>");
									out.print("<li><a href=\"login.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-log-in\" style=\"font-size: 50px; color:#31B94D\"></span><p style=\"color:white;\"> Login</p></a></li>");
									out.print("</ul>");
				} else {
									out.print("<ul class = \"nav navbar-nav navbar-right\">");
									out.print("<li><a href=\"start.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-home\" style=\"font-size: 50px; color:#31B94D\"></span> Home</a></li>");
									out.print("<li><a href=\"LogoutController\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-log-out\" style=\"font-size: 50px; color:#31B94D\"></span> Logout</a></li>");
									out.print("</ul>");
				}
			%>
		</div>
	</div>
	</nav>
	<div class="page-header header">
		<h1>
			<p align="center">SecondHand.com</p>
		</h1>
	</div>
	<center>
	<div class="showcase" style = "width: 750px;">
		<%
			String whatsapp = "";
			while (list.hasNext()) {
				AdBean adbean = list.next();
				out.print("<table class=\"table table-bordered table-hover\" style=\"font-size: 20px;\"");
				out.print("<tr>");
				out.print("<td> <h4>Ad Title:</h4>"
						+ adbean.getAdtitle() + "</td>");
				out.print("<td> <h4> Sub Category:</h4>"
						+ adbean.getCategory() + "</td>");
				out.print("<td> <a href = \"updateAd.jsp?id="+ adbean.getId()+ "&adtitle=" + adbean.getAdtitle() + "&phone="+ adbean.getPhone() + "&file="+adbean.getFile() + "&name="+adbean.getName()+ "&category="+adbean.getCategory()+ "&city="+adbean.getCity()+ "&email="+adbean.getEmail()+ "&addescription=" + adbean.getAddescription() + "&price=" + adbean.getPrice() + "&phone="+ adbean.getPhone()+ "\"> <button class = \"btn btn-success btn-lg\" ><span class = \"glyphicon glyphicon-refresh\"></span></button> </a> </td>"); 
				out.print("</tr>");
				out.print("<tr>");
				out.print("<td>");
				out.print("<div id=" + "container" + ">");
				out.print("<a href=" + adbean.getFile() + ">");
				out.print("<img src =" + adbean.getFile() + ">");
				out.print("</a>");
				out.print("</div>");
				out.print("</td>");
				out.print("<td> <h4>Ad Description:</h4>"
						+ adbean.getAddescription() + "</td>");
				out.print("<td><h4>Price:</h4>" + adbean.getPrice() + "</td>");			
				out.print("</tr>");
				out.print("<tr>");
				out.print("<td> <h4>Name:</h4>" + adbean.getName()
						+ "</td>");
				out.print("<td> <h4>Email:</h4>" + adbean.getEmail()
						+ "</td>");
				out.print("<td> <h4>Phone:</h4>" + adbean.getPhone()
						+ "</td");
				out.print("</tr>");
				out.print("<tr>");
				if (adbean.getWhatsapp().equalsIgnoreCase("y")) {
					whatsapp = "Avaliable";
				} else {
					whatsapp = "Not Avaliable";
				}
				out.print("<td> <h4>WhatsApp:</h4>" + whatsapp + "</td>");
				out.print("<td> <h4>City:</h4>" + adbean.getCity()
						+ "</td>");
				if (adbean.getSold().equals("sold out")) {
					out.print("<td class = \"text-danger\">You have marked it sold</td>");
				} else {
					out.print("<td> Mark as sold <br/> <a href = \"DeleteAdController?id="
							+ adbean.getId()
							+ "&email="
							+ adbean.getEmail()
							+ "\"> <button class = \"btn btn-success btn-lg\"><span class = \"glyphicon glyphicon-ok\"></span></button> </a> </td>");
				}
				out.print("</tr>");
				out.print("</table>");
				out.print("<br> <br> <br> "); 
			}
		%>
		<script>
			$(function() {
				/* $('#container a').fullsizable();
				 */
				$('a.fullsizable').fullsizable({
					detach_id : 'wrapper',
					clickBehaviour : 'next'
				});
				$(document).on('fullsizable:opened', function() {
					$("#jquery-fullsizable").swipe({
						/* swipeLeft : function() {
							$(document).trigger('fullsizable:next')
						},
						swipeRight : function() {
							$(document).trigger('fullsizable:prev')
						}, */
						swipeUp : function() {
							$(document).trigger('fullsizable:close')
						}
					});
				});
			});
		</script>
	</div>
	</center>
</body>
</html>