<%@page import="com.bvrith.dao.AdDAO"%>
<%@page import="com.bvrith.beans.AdBean"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	HttpSession hs = request.getSession();
	String email = (String) hs.getAttribute("emailid");
	String category = request.getParameter("category");
	AdDAO submitAnAdDAO = new AdDAO();
	List<AdBean> lst = submitAnAdDAO.listAds(category);
	ListIterator<AdBean> list = lst.listIterator();
	String message = request.getParameter("message");
	if (message != null) {
		out.print("<h3>" + message + "</h3>");
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
				if (email == null) {
						out.print("<ul class=\"nav navbar-nav navbar-right\">");
						out.print("<li><a href=\"signup.jsp\"><span class=\"glyphicon glyphicon-user\" style=\"font-size: 50px; color:#31B94D\"></span><p style=\"color:white;\">SignUp</p></a></li>");
						out.print("<li><a href=\"login.jsp\"><span class=\"glyphicon glyphicon-log-in\" style=\"font-size: 50px; color:#31B94D\"></span><p style=\"color:white;\">Login</p></a></li>");
						out.print("</ul>");
					} else {
						out.print("<ul class = \"nav navbar-nav navbar-right\">");
						out.print("<li><a href=\"ManageAd.jsp\"><button type=\"button\" class=\"btn btn-success btn-lg\">Manage Your Ads</button></a></li>");
						out.print("<li><a href=\"LogoutController\"><span class=\"glyphicon glyphicon-user\" style=\"font-size: 50px; color:#31B94D\"></span><p style=\"color:white;\">Logout</p></a></li>");
						out.print("</ul>");
					}
			%>
		</div>
	</div>
	</nav>
	<div class="page-header header">
		<h1>
			<p class="sansserif" align="center">SecondHand.com</p>
		</h1>
	</div>
	<div>
		<h3>
			<%=category%>
		</h3>
	</div>
	<div class="showcase">
		<%
			String whatsapp = "";
			while (list.hasNext()) {
				AdBean submitAnAdBean = list.next();
				out.print("<table class=" + "table table-bordered table-hover>"
						+ "");
				out.print("<tr>");
				out.print("<td> <h4>Ad Title:</h4>"
						+ submitAnAdBean.getAdtitle() + "</td>");
				out.print("<td> <h4>Sub-Category:</h4>"
						+ submitAnAdBean.getCategory() + "</td>");
				out.print("</tr>");
				out.print("<tr>");
				out.print("<td> <h4>Ad Description:</h4>"
						+ submitAnAdBean.getAddescription() + "</td>");
				out.print("<td><h4>Price:</h4>" + submitAnAdBean.getPrice()
						+ "</td>");
				out.print("<td> <h4>Phone:</h4>" + submitAnAdBean.getPhone()
						+ "</td");
				out.print("</tr>");
				out.print("<tr>");
				out.print("<td> <h4>Name:</h4>" + submitAnAdBean.getName()
						+ "</td>");
				out.print("<td> <h4>Email:</h4>" + submitAnAdBean.getEmail()
						+ "</td>");
				out.print("<td><a href = BuyAdController?adtitle1="
						+ submitAnAdBean.getAdtitle()
						+ "&phone1="
						+ submitAnAdBean.getPhone()
						+ "><button type=\"button\" class=\"btn btn-success btn-lg\">Buy</button></a></td>");
				out.print("</tr>");
				out.print("<tr>");
				if (submitAnAdBean.getWhatsapp().equalsIgnoreCase("y")) {
					whatsapp = "Avaliable";
				} else {
					whatsapp = "Not Avaliable";
				}
				out.print("<td> <h4>WhatsApp:</h4>" + whatsapp + "</td>");
				out.print("<td> <h4>City:</h4>" + submitAnAdBean.getCity()
						+ "</td>");
				out.print("</tr>");
				out.print("</table>");
				out.print("<br> <br> <br> ");
			}
		%>
	</div>
</body>
</html>