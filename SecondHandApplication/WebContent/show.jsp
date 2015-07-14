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
	int recordsPerPage = 3;
	if (request.getParameter("pages") != null)
		pages = Integer.parseInt(request.getParameter("pages"));

	AdDAO submitAnAdDAO = new AdDAO();
	ListIterator<AdBean> list = null;
	String from = request.getParameter("from");
	String to = request.getParameter("to");
	/* List<AdBean> lst = submitAnAdDAO.listAds(category, (pages - 1) * recordsPerPage, recordsPerPage);
	 list = lst.listIterator(); */
	 if (from == null && to == null) {
		List<AdBean> lst = submitAnAdDAO.listAds(category, (pages - 1) * recordsPerPage, recordsPerPage);
		list = lst.listIterator();
	}
	else {
		System.out.print(category);
		List<AdBean> lst = submitAnAdDAO.priceFilter(from, to, category, (pages - 1) * recordsPerPage, recordsPerPage);
        list = lst.listIterator();
	} 
	 
	int noOfRecords = submitAnAdDAO.getNoOfRecords();
	int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);
	request.setAttribute("cat", category);
	request.setAttribute("fromrange", from);
	request.setAttribute("torange", to);
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
	href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">
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
<link rel="stylesheet" href="css/fullsizable.css">
<link rel="stylesheet" href="/css/jquery-fullsizable.css" />
<link rel="stylesheet" href="/css/jquery-fullsizable-theme.css" />
<script src="/js/jquery-1.7.2.js"></script>
<script src="/js/jquery.fullsizable.js"></script>
<script type="text/javascript">
(function(document) {
	'use strict';

	var LightTableFilter = (function(Arr) {

		var _input;

		function _onInputEvent(e) {
			_input = e.target;
			var tables = document.getElementsByClassName(_input.getAttribute('data-table'));
			Arr.forEach.call(tables, function(table) {
				Arr.forEach.call(table.tBodies, function(tbody) {
					Arr.forEach.call(tbody.rows, _filter);
				});
			});
		}

		function _filter(row) {
			var text = row.textContent.toLowerCase(), val = _input.value.toLowerCase();
			row.style.display = text.indexOf(val) === -1 ? 'none' : 'table-row';
		}

		return {
			init: function() {
				var inputs = document.getElementsByClassName('light-table-filter');
				Arr.forEach.call(inputs, function(input) {
					input.oninput = _onInputEvent;
				});
			}
		};
	})(Array.prototype);

	document.addEventListener('readystatechange', function() {
		if (document.readyState === 'complete') {
			LightTableFilter.init();
		}
	});

})(document);</script>
<style type="text/css">
img {
	height: 200px;
	width: 200px;
}
</style>
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
										out.print("<li><a href=\"start.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-home\" style=\"font-size: 50px; color:#31B94D;\"></span>Home</a></li>");
										out.print("<li><a href=\"signup.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-user\" style=\"font-size: 50px; color: #31B94D;\"></span> Sign Up</a></li>");
									    out.print("<li><a href=\"login.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-log-in\" style=\"font-size: 50px; color: #31B94D;\"></span> Login</a></li>");
										out.print("</ul>");
									    } else {
										out.print(email);
									    out.print("<ul class = \"nav navbar-nav navbar-right\">");
									    out.print("<li><a href=\"ManageAd.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-pencil\" style=\"font-size: 50px; color: #19A347;\"></span> Manage Your Ads</a></li>");
									    out.print("<li><a href=\"start.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-home\" style=\"font-size: 50px; color:#31B94D;\"></span>Home</a></li>");
										out.print("<li><a href=\"LogoutController\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-log-out\" style=\"font-size: 50px; color: #31B94D;\"></span> Logout</a></li>");
										out.print("</ul>");
									    }
			%>
		</div>
	</div>
	</nav>
	<div class="page-header header">
		<h1 class="sansserif" align="center">
			SecondHand.com
		</h1>
	</div>
	<div>
		<h3 align="center">
			<%=category%>
		</h3>
	</div>
	<form action="FilterController">
		<input type="text" id="from" name="from" style="width: 80px;"
			placeholder="From"> - <input type="text" id="to" name="to"
			style="width: 80px;" placeholder="To"> <input type="hidden"
			name="category" value="<%=category%>">
		<button class="btn btn-success btn-md" onclick="myFunction()">
			<span class="glyphicon glyphicon-filter">
		</button>
	</form>
	<br>
	<c:if test="${not empty fromrange && not empty torange}">
		<%--For displaying Previous link except for the 1st page --%>
		<c:if test="${currentPage != 1}">
			<td><a
				href="show.jsp?from=${fromrange}&to=${torange}&category=${cat}&pages=${currentPage - 1}"><button class="btn btn-success btn-md active">Previous</button></a></td>
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
								<td><a
									href="show.jsp?from=${fromrange}&to=${torange}&category=${cat}&pages=${i}"><button class="btn btn-success btn-md active">${i}</button></a></td>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</tr>
			</table>

			<%--For displaying Next link --%>
			<c:if test="${currentPage lt noOfPages}">

				<td><a
					href="show.jsp?from=${fromrange}&to=${torange}&category=${cat}&pages=${currentPage + 1}"><button class="btn btn-success btn-md active">Next</button></a></td>
			</c:if>
	</c:if>

	<c:if test="${empty fromrange && empty torange}">
		<center>
			<c:if test="${currentPage != 1}">
				<td><a href="show.jsp?category=${cat}&pages=${currentPage - 1}"><button
							class="btn btn-success btn-md">Previous</button></a></td>
			</c:if>
			<table border="1" cellpadding="10" cellspacing="10">
				<tr>
					<c:forEach begin="1" end="${noOfPages}" var="i">
						<c:choose>
							<c:when test="${currentPage eq i}">
								<td><button class="btn btn-success btn-md active">${i}</button></td>
							</c:when>
							<c:otherwise>
								<td><a href="show.jsp?category=${cat}&pages=${i}"><button
											class="btn btn-success btn-md">${i}</button></a></td>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</tr>
			</table>
			<c:if test="${currentPage lt noOfPages}">
				<td><a href="show.jsp?category=${cat}&pages=${currentPage + 1}"><button
							class="btn btn-success btn-md">Next</button></a></td>
			</c:if>
		</center>
	</c:if>

 <br> <br>
	<div class="showcase">
		<%
			String whatsapp = "";
								   while (list.hasNext()) {
									   AdBean adbean = list.next();
									   out.print("<div class=\"container\">");
										out.print("<div class = \"row\">");
										out.print("<div class = \"col-lg-4\">");
										out.print("<div id=" + "container" + ">");
										out.print("<a href=" + adbean.getFile() + ">");
										out.print("<img src =" + adbean.getFile() + ">");
										out.print("</a>");
										out.print("</div>");
										out.print("</div>");
										out.print("<div class=\"col-lg-8\"><table class=\"table table-striped\" style=\"font-size: 20px;\"><tr>");
										out.print("<td>Ad Title: " + adbean.getAdtitle()
												+ "</td>");
										out.print("<td>Price: " + adbean.getPrice() + "</td>");
										out.print("</tr> <tr>");
										out.print("<td>Ad Description: "
												+ adbean.getAddescription() + "</td>");
										out.print("</tr> <tr>");
										out.print("<td>Name: " + adbean.getName() + "</td>");
										out.print("<td>Phone: " + adbean.getPhone() + "</td>");
										out.print("</tr> <tr>");
										out.print("<td>Email: " + adbean.getEmail() + "</td>");
										if (adbean.getWhatsapp().equalsIgnoreCase("y")) {
											whatsapp = "Avaliable";
										} else {
											whatsapp = "Not Avaliable";
										}
										out.print("<td>Available On WhatsApp: " + whatsapp + " </td>");
										out.print("</tr> <tr>");
										out.print("<td>City: " + adbean.getCity() + "</td>");
										String availabilty = adbean.getSold();
										if (availabilty.equalsIgnoreCase("sold out")) {
											out.print("<td class = \"text-danger\">Sold Out! <span class = \"glyphicon glyphicon-tag\" style = \"color: red; font-size: 18px;\"></span></td>");
										} else {
											out.print("<td class = \"text-success\">Available <span class = \"glyphicon glyphicon-ok\" style = \"color: green; font-size: 18px;\"></span></td>");
										}
										out.print("</tr> <tr>");
										out.print("<td>Sub Category: " + adbean.getCategory()
												+ "</td>");
										if (!availabilty.equalsIgnoreCase("sold out")) {
											out.print("<td><a href = \"message.jsp?email1="+ adbean.getEmail() +"\">Message Seller <span class = \"glyphicon glyphicon-envelope\" style = \"color: blue; font-size: 22px;\"></span></a></td>");
										}
										out.print("</tr> </table> </div> </div> </div>");
										out.print("<br/> <br/> <br/>");}
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
		</center>
	</div>
</body>
</html>