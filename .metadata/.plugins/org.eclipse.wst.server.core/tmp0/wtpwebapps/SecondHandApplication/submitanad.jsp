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
<title>Insert title here</title>
<style type="text/css">
.tablediv {
	height: 800px;
	width: 800px;
}

.menu {
	float: none;
	height: 80px;
}

.account {
	position: absolute;
	top: 25px;
	right: 289px;
}

.logo {
	position: absolute;
	top: 20px;
	left: 20px;
}

.user1 {
	position: absolute;
	top: 31px;
	right: 410px;
}

.panel-heading {
	background-color: #4791DA !important
}
</style>
</head>
<body>
	<div class="logo">
		<img src="./IMG/logo.PNG" style="width: 220px; height: 160px;">
	</div>
	<div class="well well-lg menu">
		<form action="SearchController">
			<table align="right">
				<tr>
					<!-- <td><input name = "item" type = "text" placeholder = "What are you looking for?" style = "width: 200px; height: 35px;"></td> -->
					<td>
						<div class="pull-right">
							<div class="dropdown">
								<input name="item" class="dropdown-toggle"
									data-toggle="dropdown"><span class="caret"></span>
								<ul class="dropdown-menu">
									<li><a tabindex="-1" href="show.jsp?category=Mobile">Mobiles</a></li>
									<li><a tabindex="-1" href="show.jsp?category=RealEstate">Real
											Estate</a></li>
									<li><a tabindex="-1" href="show.jsp?category=Books">Books</a></li>
									<li class="divider"></li>
									<li><a tabindex="-1" href="mobiles.jsp">All Categories</a></li>
								</ul>
							</div>
						</div>
					</td>
					<td>&nbsp;</td>
					<td><button type="submit" class="btn btn-xs btn-success">
							<span class="glyphicon glyphicon-search"
								style="color: white; font-size: 29px;"></span>
						</button></td>
				</tr>
			</table>
		</form>
		<a href="login.jsp"> <span class="glyphicon glyphicon-user user1"
			style="color: blue; font-size: 22px;"></span>
			<p class="account" style="font-size: 22px; color: blue;">My Account</p>
		</a>
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
											<input type="text" class="form-control" name="category"
												placeholder="Select a Category" required>
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
																<button type="submit" class="btn btn-primary btn-lg">SUBMIT</button>
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