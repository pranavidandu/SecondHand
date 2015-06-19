<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	HttpSession hs = request.getSession();
	String email = (String)hs.getAttribute("emailid");
	if (email == null) {
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
<title>Second Hand</title>
<link rel="stylesheet" src="/SecondHandApplication/WebContent/styling.css">
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

				<li class="active"><a href="submitanad.jsp"><button
							type="button" class="btn btn-success btn-lg">Submit An
							Ad</button></a></li>

			</ul>
			<%
			if (email == null) {
				out.print("<ul class=\"nav navbar-nav navbar-right\">");
				out.print("<li><a href=\"signup.jsp\"><span class=\"glyphicon glyphicon-user\" style=\"font-size: 50px; color:#31B94D\"></span><p style=\"color:white;\">SignUp</p></a></li>");
				out.print("<li><a href=\"login.jsp\"><span class=\"glyphicon glyphicon-log-in\" style=\"font-size: 50px; color:#31B94D\"></span><p style=\"color:white;\">Login</p></a></li>");
				out.print("</ul>");
			}
			else {
				out.print("<ul class = \"nav navbar-nav navbar-right\">");
				out.print("<li><a href=\"ManageAd.jsp\"><button type=\"button\" class=\"btn btn-success btn-lg\">Manage Your Ads</button></a></li>");
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
				<form action="SubmitanadController">
					<div class="form-group">
						<div class="panel-group">
							<div class="panel panel-default">
								<div class="panel-heading">Ad Title</div>
								<div class="panel-body">
									<div class="form-group">
										<input type="text" class="form-control" name="adtitle"
											placeholder="Enter AdTitle" required>
									</div>
								</div>

								<div class="panel panel-default">
									<div class="panel-heading">Category</div>
									<div class="panel-body">
										<div class="form-group">
											<select class="form-control" name="category"
												placeholder="Select a Category" required>
												<option>Mobiles</option>
												<option>Tablets</option>
												<option>EarPhones</option>
												<option>CaeCovers</option>
												</select>
										</div>
									</div>

									<div class="panel panel-default">
										<div class="panel-heading">Ad Description</div>
										<div class="panel-body">
											<div class="form-group">
												<textarea class="form-control" rows="5" name="addescription" required></textarea>
											</div>
										</div>

										<div class="panel panel-default">
											<div class="panel-heading">Upload Photos</div>
											<div class="panel-body">
												<img src="./IMG/upload.png" class="img-thumbnail"
													alt="cannot upload" width="100" height="100"> &nbsp;
												<img src="./IMG/upload.png" class="img-thumbnail"
													alt="cannot upload" width="100" height="100"> &nbsp;
												<img src="./IMG/upload.png" class="img-thumbnail"
													alt="cannot upload" width="100" height="100"> &nbsp;
												<img src="./IMG/upload.png" class="img-thumbnail"
													alt="cannot upload" width="100" height="100"> <br>
												<br> <img src="./IMG/upload.png" class="img-thumbnail"
													alt="cannot upload" width="100" height="100"> &nbsp;
												<img src="./IMG/upload.png" class="img-thumbnail"
													alt="cannot upload" width="100" height="100"> &nbsp;
												<img src="./IMG/upload.png" class="img-thumbnail"
													alt="cannot upload" width="100" height="100"> &nbsp;
												<img src="./IMG/upload.png" class="img-thumbnail"
													alt="cannot upload" width="100" height="100">
											</div>
											<div class="panel panel-default">
												<div class="panel-heading">Price</div>
												<div class="panel-body">
													<div class="panel-body">
														<div class="form-group">
															<input type="text" class="form-control" name="price"
																maxlength="10" placeholder="Enter Price" required>
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">Name</div>
													<div class="panel-body">
														<div class="panel-body">
															<div class="form-group">
																<input type="text" class="form-control" name="names"
																	placeholder="Enter Name" required>
															</div>
														</div>
													</div>
													<div class="panel panel-default">
														<div class="panel-heading">Email</div>
														<div class="panel-body">
															<div class="panel-body">
																<div class="form-group">
																	<input type="text" class="form-control" name="emails"
																		placeholder="Enter Email" value=<%=email%> required>
																</div>
															</div>
														</div>
														<div class="panel panel-default">
															<div class="panel-heading">Phone</div>
															<div class="panel-body">
																<div class="panel-body">
																	<div class="form-group">
																		<input type="text" class="form-control" name="phone"
																			placeholder="Enter phone" required>
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
																				placeholder="Enter city" required>
																		</div>
																	</div>
																</div>
																<button type="submit" class="btn btn-success btn-lg">SUBMIT</button>
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