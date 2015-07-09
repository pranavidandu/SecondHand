<%@page import="java.awt.Image"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	HttpSession hs = request.getSession();
	String email1 = (String) hs.getAttribute("emailid");
	if (email1 == null) {
		response.sendRedirect("login.jsp");
	}
	String adtitle = request.getParameter("adtitle");
	String addescription = request.getParameter("addescription");
	String file = request.getParameter("file");
	String city = request.getParameter("city");
	String email = request.getParameter("email");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	int price = Integer.parseInt(request.getParameter("price"));
	String category = request.getParameter("category");
	String whatsapp = request.getParameter("whatsapp");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<title>SecondHand</title>

<script type="text/javascript">
	<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js">
</script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script>
	// When any key is down
	$(document).keydown(function() {

		// Get the input element and its value
		var i = $("#com");
		var val = i.val();

		// Send request only if user types alphabet
		// because auto.jsp returns names of companies
		// which contains only alphabets
		if (val.match(/^[A-z]+$/)) {
			// Send request and get the data
			$.get("index.jsp?com=" + val, function(data) {

				// Get each item separated by new line
				var items = data.split("\n");

				// put those items in autocomplete! That's it!
				i.autocomplete({
					source : items
				});
			});
		}

	});
</script>
<script type="text/javascript">
	function show() {
		alert("Ad has been submitted.");
	}
</script>
<link rel="stylesheet"
	src="/SecondHandApplication/WebContent/styling.css">
<style type="text/css">
.panel-heading {
	background-color: #31B94D !important
}
</style>
</head>
<body>

	<nav class="navbar navbar-inverse">
	<div class="container-fluid ">

		<div>
			<ul class="nav navbar-nav">
			</ul>
			<%
			if (email == null) {
				out.print("<ul class=\"nav navbar-nav navbar-right\">");
				out.print("<li><a href=\"start.jsp\"><span class=\"glyphicon glyphicon-home\" style=\"font-size: 50px; color:#31B94D\"></span><p style=\"color:white;\">Home</p></a></li>");
				out.print("<li><a href=\"signup.jsp\"><span class=\"glyphicon glyphicon-user\" style=\"font-size: 50px; color:#31B94D\"></span><p style=\"color:white;\">Sign Up</p></a></li>");
				out.print("<li><a href=\"login.jsp\"><span class=\"glyphicon glyphicon-log-in\" style=\"font-size: 50px; color:#31B94D\"></span><p style=\"color:white;\">Login</p></a></li>");
				out.print("</ul>");
			} else {
				out.print("<ul class = \"nav navbar-nav navbar-right\">");
				out.print("<li><a href=\"start.jsp\"><span class=\"glyphicon glyphicon-home\" style=\"font-size: 50px; color:#31B94D\"></span><p style=\"color:white;\">Home</p></a></li>");
				out.print("<li><a href=\"LogoutController\"><span class=\"glyphicon glyphicon-user\" style=\"font-size: 50px; color:#31B94D\"></span><p style=\"color:white;\">Logout</p></a></li>");
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
	<div class="container tablediv">
		<div class="container tablediv">
			<h2>Submit a Free Classified Ad</h2>
			<h3>
				<form action="UpdateController" method = "post">

					<div class="form-group">
						<div class="panel-group">
							<div class="panel panel-default">
								<div class="panel-heading">Ad Title</div>
								<div class="panel-body">
									<div class="form-group">
										<input type="text" class="form-control" name="adtitle"
											placeholder="Enter AdTitle" value=<%=adtitle%>
											readonly="readonly">
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">Select a Sub-Category</div>
									<div class="panel-body">
										<input type="text" id="com" value = <%=category %> name="category" required />
									</div>

									<div class="panel panel-default">
										<div class="panel-heading">Ad Description</div>
										<div class="panel-body">
											<div class="form-group">
												<textarea class="form-control" rows="5" name="addescription"
													value=<%=addescription%>></textarea>
											</div>
										</div>

										<div class="panel panel-default">
											<div class="panel-heading">Upload Photo</div>
											<div class="panel-body">
												<div class="panel-body">
													<div class="form-group">
														<input type="file" name="file" size="50"
															placeholder="Upload Your Image" required />
													</div>
												</div>
											</div>
											<div class="panel panel-default">
												<div class="panel-heading">Price</div>
												<div class="panel-body">
													<div class="panel-body">
														<div class="form-group">
															<input type="text" class="form-control" name="price"
																value=<%=price%> maxlength="10"
																placeholder="Enter Price">
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">Name</div>
													<div class="panel-body">
														<div class="panel-body">
															<div class="form-group">
																<input type="text" class="form-control" name="names"
																	placeholder="Enter Name" value=<%=name%>>
															</div>
														</div>
													</div>
													<div class="panel panel-default">
														<div class="panel-heading">Email</div>
														<div class="panel-body">
															<div class="panel-body">
																<div class="form-group">
																	<input type="text" class="form-control" name="emails"
																		placeholder="Enter Email" value=<%=email%>>
																</div>
															</div>
														</div>
														<div class="panel panel-default">
															<div class="panel-heading">Phone</div>
															<div class="panel-body">
																<div class="panel-body">
																	<div class="form-group">
																		<input type="text" class="form-control" name="phone"
																			placeholder="Enter phone" value=<%=phone%>>
																	</div>
																	<br> <label class="checkbox-inline"><input
																		type="checkbox" value="" name="availableonwhatsapp">Available
																		on whatsapp</label>
																</div>
															</div>
															<div class="panel panel-default">
																<div class="panel-heading">Enter a City</div>
																<div class="panel-body">
																	<div class="panel-body">
																		<div class="form-group">
																			<input type="text" class="form-control" name="city"
																				placeholder="Enter city" value=<%=city%>>
																		</div>
																	</div>
																</div>
																<button type="submit" class="btn btn-success btn-lg">Update</button>
															</div>

														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
			</h3>
		</div>
	</div>
</body>
</html>