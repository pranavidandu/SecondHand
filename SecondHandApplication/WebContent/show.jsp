<%@page import="com.bvrith.dao.AdDAO"%>
<%@page import="com.bvrith.beans.AdBean"%>
<%@page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	HttpSession hs = request.getSession();
	String email = (String) hs.getAttribute("emailid");
	String category = request.getParameter("category");

	int pages = 1;
	int recordsPerPage = 1;
	if (request.getParameter("pages") != null)
		pages = Integer.parseInt(request.getParameter("pages"));

	AdDAO submitAnAdDAO = new AdDAO();
	ListIterator<AdBean> list = null;
	String from = request.getParameter("from");
	String to = request.getParameter("to");
	if (from == null && to == null) {

		List<AdBean> lst = submitAnAdDAO.listAds(category, (pages - 1)
				* recordsPerPage, recordsPerPage);
		list = lst.listIterator();
	}
	else {
		List<AdBean> lst = submitAnAdDAO.priceFilter(from, to, category);
        list = lst.listIterator();
	} 
	
	int noOfRecords = submitAnAdDAO.getNoOfRecords();
	int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);
	request.setAttribute("noOfPages", noOfPages);
	request.setAttribute("currentPage", pages);

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
<script src="js/jquery-1.8.2.js" type="text/javascript"></script>
<script src="js/jquery-ui-1.10.3.custom.js" type="text/javascript"></script>
<script src="js/jquery.jtable.js" type="text/javascript"></script>
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
				if (email == null) {
					out.print("<ul class=\"nav navbar-nav navbar-right\">");
					out.print("<li><a href=\"start.jsp\"><span class=\"glyphicon glyphicon-home\" style=\"font-size: 50px; color:#31B94D\"></span><p style=\"color:white;\">Home</p></a></li>");
					out.print("<li><a href=\"signup.jsp\"><span class=\"glyphicon glyphicon-user\" style=\"font-size: 50px; color:#31B94D\"></span><p style=\"color:white;\">SignUp</p></a></li>");
					out.print("<li><a href=\"login.jsp\"><span class=\"glyphicon glyphicon-log-in\" style=\"font-size: 50px; color:#31B94D\"></span><p style=\"color:white;\">Login</p></a></li>");
					out.print("</ul>");
				} else {
					out.print("<ul class = \"nav navbar-nav navbar-right\">");
					out.print("<li><a href=\"start.jsp\"><span class=\"glyphicon glyphicon-home\" style=\"font-size: 50px; color:#31B94D\"></span><p style=\"color:white;\">Home</p></a></li>");
					out.print("<li><a href=\"ManageAd.jsp\"><button type=\"button\" class=\"btn btn-success btn-lg\">View Your Ads</button></a></li>");
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
	<form action="FilterController">
		<input type="text" id="from" name="from" style="width: 80px;"
			placeholder="From"> - <input type="text" id="to" name="to"
			style="width: 80px;" placeholder="To">
		<button class="btn btn-success btn-md" onclick="myFunction()">
			<span class="glyphicon glyphicon-filter">
		</button>
	</form>
	<br>
	<br>
	<br>

	<div class="showcase">
		<%
			String whatsapp = "";
			while (list.hasNext()) {
				AdBean adbean = list.next();

				out.print("<table class=" + "table table-bordered table-hover>"
						+ "");
				out.print("<tr>");
				out.print("<td> <h4>Ad Title:</h4>" + adbean.getAdtitle()
						+ "</td>");
				out.print("<td> <h4>Sub-Category:</h4>" + adbean.getCategory()
						+ "</td>");
				out.print("</tr>");
				out.print("<tr>");
				out.print("<td> <h4>Ad Description:</h4>"
						+ adbean.getAddescription() + "</td>");
				out.print("<td><h4>Price:</h4>" + adbean.getPrice() + "</td>");
				out.print("<td> <h4>Phone:</h4>" + adbean.getPhone() + "</td");
				out.print("</tr>");
				out.print("<tr>");
				out.print("<td> <h4>Name:</h4>" + adbean.getName() + "</td>");
				out.print("<td> <h4>Email:</h4>" + adbean.getEmail() + "</td>");

				out.print("</tr>");
				out.print("<tr>");
				if (adbean.getWhatsapp().equalsIgnoreCase("y")) {
					whatsapp = "Avaliable";
				} else {
					whatsapp = "Not Avaliable";
				}
				out.print("<td> <h4>WhatsApp:</h4>" + whatsapp + "</td>");
				out.print("<td> <h4>City:</h4>" + adbean.getCity() + "</td>");
				out.print("</tr>");
				out.print("</table>");
				out.print("<br> <br> <br> ");
			}
		%>

		<%--For displaying Previous link except for the 1st page --%>
		<c:if test="${currentPage != 1}">
			<td><a href="show.jsp?pages=${currentPage - 1}">Previous</a></td>
		</c:if>

		<%--For displaying Page numbers.
    The when condition does not display a link for the current page--%>
    <center>
		<table border="1" cellpadding="10" cellspacing="10">
			<tr>
				<c:forEach begin="1" end="${noOfPages}" var="i">
					<c:choose>
						<c:when test="${currentPage eq i}">
							<td>${i}</td>
						</c:when>
						<c:otherwise>
							<td><a href="show.jsp?pages=${i}">${i}</a></td>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</tr>
		</table>

		<%--For displaying Next link --%>
		<c:if test="${currentPage lt noOfPages}">
			<td><a href="show.jsp?pages=${currentPage + 1}">Next</a></td>
		</c:if>
       </center>
	</div>
</body>



</html>