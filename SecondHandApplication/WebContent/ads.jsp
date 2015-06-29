<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	HttpSession hs = request.getSession();
	String email = (String) hs.getAttribute("emailid");
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

				<li class="active"><a href="submitanad.jsp"><button
							type="button" class="btn btn-success btn-lg">Submit An
							Ad</button></a></li>

			</ul>
			<%
				out.print("<ul class = \"nav navbar-nav navbar-right\">");
				out.print("<li><a href=\"ManageAd.jsp\"><button type=\"button\" class=\"btn btn-success btn-lg\">View Your Ads</button></a></li>");
				out.print("<li><a href=\"LogoutController\"><span class=\"glyphicon glyphicon-user\" style=\"font-size: 50px; color:#31B94D\"></span><p style=\"color:white;\">Logout</p></a></li>");
				out.print("</ul>");
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
				<form action="AdsController">
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
									<div class="panel-heading">Select a Sub-Category</div>
									<div class="panel-body">
										<div class="form-group">
											<select class="form-control" name="category"
												placeholder="Select a  Sub Category" required>
												<option>Mobiles</option>
												<option>Tablets</option>
												<option>Ear Phones</option>
												<option>Case Covers</option>
												<option>Computers</option>
												<option>Cds</option>
												<option>Camera</option>
												<option>Video Games</option>
												<option>TV</option>
												<option>Other Electronics</option>
												<option>Cars</option>
												<option>Motorcycle</option>
												<option>Scooters</option>
												<option>Bicycles</option>
												<option>Commercial Vehicles</option>
												<option>Other Vehicles</option>
												<option>Furniture</option>
												<option>Decor</option>
												<option>Fridge and AC</option>
												<option>Kitchen Appliances</option>
												<option>Paintings and Handicrafts</option>
												<option>Dogs</option>
												<option>Aquarium and Fishes</option>
												<option>Birds</option>
												<option>Cats</option>
												<option>Animal food</option>
												<option>Other Animals</option>
												<option>Books</option>
												<option>Musical Instruments</option>
												<option>Sports</option>
												<option>Fitness</option>
												<option>Coins and Collectibles</option>
												<option>Clothes</option>
												<option>Shoes</option>
												<option>Jewellary</option>
												<option>Bags</option> 
												<option>Watches</option>
												<option>Health and Beauty</option>
												<option>Strollers</option>
												<option>Kid Furnitures</option>
												<option>Car Seat</option>
												<option>Nutrition</option>
												<option>Kid Clothing</option>
												<option>Toys and Games</option>
											</select>
										</div>
									</div>

									<div class="panel panel-default">
										<div class="panel-heading">Ad Description</div>
										<div class="panel-body">
											<div class="form-group">
												<textarea class="form-control" rows="5" name="addescription"
													required></textarea>
											</div>
										</div>


										<div class="panel panel-default">
											<div class="panel-heading">Upload Photo</div>
											<div class="panel-body">
												<div class="panel-body">
													<div class="form-group">
														<input type="file" name="photo" size="50"
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