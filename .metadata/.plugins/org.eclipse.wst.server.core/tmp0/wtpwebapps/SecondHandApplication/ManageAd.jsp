<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@page import="com.bvrith.dao.SubmitAnAdDAO"%>
<%@page import="com.bvrith.beans.SubmitAnAdBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<%
	HttpSession hs = request.getSession();
	String email = (String) hs.getAttribute("emailid");
	 
	    SubmitAnAdDAO subadDao = new SubmitAnAdDAO();
	   
	    List<SubmitAnAdBean> list = subadDao.listAds(email);
	    ListIterator<SubmitAnAdBean> lt = list.listIterator();
%>
<link rel="stylesheet"
	src="/SecondHandApplication/WebContent/styling.css">
</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid ">

		<div>
			<ul class="nav navbar-nav">

				<li class="active"><a href="submitanad.jsp"><button
							type="button" class="btn btn-success btn-lg">Submit An
							Ad</button></a></li>
			</ul>
			<%
				if (email == null) {
					out.print("<ul class=\"nav navbar-nav navbar-right\">");
					out.print("<li><a href=\"signup.jsp\"><span class=\"glyphicon glyphicon-user\" style=\"font-size: 50px;\"></span> Sign Up</a></li>");
					out.print("<li><a href=\"login.jsp\"><span class=\"glyphicon glyphicon-log-in\" style=\"font-size: 50px;\"></span>Login</a></li>");
					out.print("</ul>");
				}
				else {
					out.print(email);
					out.print("<ul class = \"nav navbar-nav navbar-right\">");
					
					out.print("<li><a href=\"LogoutController\"><span class=\"glyphicon glyphicon-user\" style=\"font-size: 50px;\"></span>Logout</a></li>");
					out.print("</ul>");
				}
			%>


		</div>
	</div>
	</nav>
	<div class="page-header">
		<h1>
			<p class="sansserif" align="center">SecondHand.com</p>
		</h1>

	</div>
	<form>
<form>
<table class="table table-hover" border = 3 > 
<tr class="success">
<td><h4>Ad Title</h4></td>
<td><h4>Category</h4></td>
<td><h4>Ad Description</h4></td>
<td><h4>Price</h4></td>
<td><h4>Name</h4></td>
<td><h4>Email</h4></td>
<td><h4>Phone</h4></td>
<td><h4>Whatsapp</h4></td>
<td><h4>City</h4></td>
</tr>
<%
	while(lt.hasNext()) {
		SubmitAnAdBean subad = lt.next();
		out.print("<tr class=success>");
		out.print("<td>"+"<h3>" + subad.getAdtitle() + "</h3>");
		out.print("<td>"+"<h3>"  + subad.getCategory()+ "</h3>");
		out.print("<td>"+"<h3>"  + subad.getAddescription()+ "</h3>");
		out.print("<td>"+"<h3>"  + subad.getPrice()+ "</h3>");
		out.print("<td>"+"<h3>" + subad.getName() + "</h3>");
		out.print("<td>"+"<h3>"  + subad.getEmail()+ "</h3>");
		out.print("<td>"+"<h3>"  + subad.getPhone()+ "</h3>");
		out.print("<td>"+"<h3>"  + subad.getWhatsapp()+ "</h3>");
		out.print("<td>"+"<h3>"  + subad.getCity()+ "</h3>");
		out.print("<td><a href = DeleteAdController?email="+subad.getEmail()+"><img src=./IMG/delete.png width = 50 height = 50 ></a></td>");
		out.print("<td><a href = submitanad.jsp.jsp"+"&adtitle="+subad.getAdtitle()+"&category="+subad.getCategory()+"&addespcription="+subad.getAddescription()+"&price="+subad.getPrice()+"&name="+subad.getName()+"&email="+subad.getEmail()+"&phone="+subad.getPhone()+"&availableonwhatsapp="+subad.getWhatsapp()+"&city="+subad.getCity()+"></a></td>");
		/* out.print("<td><a href = submitanad.jsp?email="+subad.getAdtitle()+"&adtitle="+subad.getCategory()+"&category="+subad.getAddescription()+"&addescription="+subad.getPrice()+"&price="+subad.getName()+"&name="+subad.getEmail()+"&email="+subad.getPhone()+"&phone="+subad.getWhatsapp()+"&availableonwhatsapp="+susbad.getCity()+"&city="+><span class="glyphicons glyphicons-plus"></span></a></td>"); */
		out.print("</tr>");
	}
%>
</table>
</form>
</table>
</form>
</body>
</html>