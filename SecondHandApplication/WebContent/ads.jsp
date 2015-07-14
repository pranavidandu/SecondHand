<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	HttpSession hs = request.getSession();
	String email = (String) hs.getAttribute("emailid");
	if (email == null) {
		response.sendRedirect("login.jsp");
	}
	String admessage = request.getParameter("admessage");
	if (admessage != null) {
		out.print("<script>alert(\"" + admessage +"\")</script>");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script>
	$(document).ready(
			function() {
				var availableTags = [ "Mobiles", "Tablets", "Ear Phones",
						"Case Covers", "Computers", "Cds", "Camera",
						"Video Games", "TV", "Other Electronics", "Cars",
						"Motercycle", "Scooters", "Bicycles",
						"Commercial Vehicles", "Furniture", "Decor",
						"Fridge and AC", "Kitchen Appliances",
						"Paintings and Handicrafts", "Dogs",
						"Aquarium and Fishes", "Birds", "Cats", "Animal Food",
						"Other Animals", "Books", "Musical Instruments",
						"Sports", "Fitness", "Coins and Collectibles",
						"Clothes", "Shoes", "Jewellery", "Bags", "Watches",
						"Health and Beauty", "Strollers", "Kid Furnitures",
						"Car Seat", "Nutrition", "Kid Clothing",
						"Toys and Games" ];
				$("#com").autocomplete({
					source : availableTags
				});

				$(document).keydown(function() {

					// Get the input element and its value
					var i = $("#citi");

					var val = i.val();

					// Send request only if user types alphabet
					// because auto.jsp returns names of companies
					// which contains only alphabets
					if (val.match(/^[A-z]+$/)) {
						// Send request and get the data
						$.get("List.jsp?citi=" + val, function(data) {

							// Get each item separated by new line
							var items = data.split("\n");

							// put those items in autocomplete! That's it!
							i.autocomplete({
								source : items
							});
						});
					}
				});
			});
</script>
<!-- <script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script> <script>
	$(document)
			.ready(
					function() {
						$("#fileupload")
								.change(
										function() {
											$("#dvPreview").html("");
											var regex = /^([a-zA-Z0-9\s_\\.\-:])+(.jpg|.jpeg|.gif|.png|.bmp)$/;
											if (regex.test($(this).val()
													.toLowerCase())) {
												if ($.browser.msie
														&& parseFloat(jQuery.browser.version) <= 9.0) {
													$("#dvPreview").show();
													$("#dvPreview")[0].filters
															.item("DXImageTransform.Microsoft.AlphaImageLoader").src = $(
															this).val();
												} else {
													if (typeof (FileReader) != "undefined") {
														$("#dvPreview").show();
														$("#dvPreview").append(
																"<img />");
														var reader = new FileReader();
														reader.onload = function(
																e) {
															$("#dvPreview img")
																	.attr(
																			"src",
																			e.target.result);
														}
														reader
																.readAsDataURL($(this)[0].files[0]);
													} else {
														alert("This browser does not support FileReader.");
													}
												}
											} else {
												alert("Please upload a valid image file.");
											}
										});
					});
</script> -->
<!-- <script>
	// When any key is down
	$(document).keydown(function() {

		// Get the input element and its value
		var i = $("#citi");

		var val = i.val();

		// Send request only if user types alphabet
		// because auto.jsp returns names of companies
		// which contains only alphabets
		if (val.match(/^[A-z]+$/)) {
			// Send request and get the data
			$.get("List.jsp?citi=" + val, function(data) {

				// Get each item separated by new line
				var items = data.split("\n");

				// put those items in autocomplete! That's it!
				i.autocomplete({
					source : items
				});
			});
		}

	});
</script> -->

<title>Second Hand</title>
<link rel="stylesheet"
	src="/SecondHandApplication/WebContent/styling.css">
<style type="text/css">
.panel-heading {
	background-color: #31B94D !important
}

body {
	font-family: Arial;
	font-size: 10pt;
}

#dvPreview {
	filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=image);
	min-height: 100px;
	min-width: 100px;
	display: none;
}
</style>
</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid ">
		<div>
			<%
				out.print("<ul class = \"nav navbar-nav navbar-right\">");
				out.print("<li><a href=\"start.jsp\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-home\" style=\"font-size: 50px; color:#31B94D\"></span>Home</a></li>");
				out.print("<li><a href=\"LogoutController\" style = \"font-size: 20px; color: white;\"><span class=\"glyphicon glyphicon-log-out\" style=\"font-size: 50px; color: #31B94D;\"></span> Logout</a></li>");
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
				<form action="AdsController" method="post"
					enctype="multipart/form-data">
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
									<div class="panel-heading">
										<div class="ui-widget">
											<label for="com">Select a Sub-Category</label>
										</div>
									</div>

									<div class="panel-body">
										<input type="text" id="com" name="category" required />
									</div>

									<div class="panel panel-default">
										<div class="panel-heading">Ad Description</div>
										<div class="panel-body">
											<div class="form-group">
												<textarea class="form-control" rows="5" name="addescription"
													required></textarea>
											</div>
										</div>

										<!-- 										<script type="text/javascript"
											src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
										<script>
	$(document).ready(function() {
						$("#fileupload").click(function() {
											$("#dvPreview").html("");
											var regex = /^([a-zA-Z0-9\s_\\.\-:])+(.jpg|.jpeg|.gif|.png|.bmp)$/;
											if (regex.test($(this).val()
													.toLowerCase())) {
												if ($.browser.msie
														&& parseFloat(jQuery.browser.version) <= 9.0) {
													$("#dvPreview").show();
													$("#dvPreview")[0].filters
															.item("DXImageTransform.Microsoft.AlphaImageLoader").src = $(
															this).val();
												} else {
													if (typeof (FileReader) != "undefined") {
														$("#dvPreview").show();
														$("#dvPreview").append(
																"<img />");
														var reader = new FileReader();
														reader.onload = function(
																e) {
															$("#dvPreview img")
																	.attr(
																			"src",
																			e.target.result);
														}
														reader
																.readAsDataURL($(this)[0].files[0]);
													} else {
														alert("This browser does not support FileReader.");
													}
												}
											} else {
												alert("Please upload a valid image file.");
											}
										});
					});
	});
</script> -->
										<div class="panel panel-default">
											<div class="panel-heading">Upload Photo</div>
											<div class="panel-body">
												<div class="panel-body">
													<script type="text/javascript"
														src="http://code.jquery.com/jquery-1.8.2.js"></script>
													<script type="text/javascript">
														function showimagepreview(
																input) {
															if (input.files
																	&& input.files[0]) {
																var filerdr = new FileReader();
																filerdr.onload = function(
																		e) {
																	$(
																			'#imgprvw')
																			.attr(
																					'src',
																					e.target.result);
																}
																filerdr
																		.readAsDataURL(input.files[0]);
															}
														}
													</script>
													<div class="form-group">
														<form id="form1" runat="server">
															<div>
																<input type="file" name="file" id="filUpload"
																	onchange="showimagepreview(this) " />
															</div>
															<img id="imgprvw" alt="uploaded image preview" width = "300px" height="300px;" />
														</form>
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
																	<input type="email" class="form-control" name="emails"
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
															<!-- 		<script>
																// When any key is down
																$(document)
																		.keydown(
																				function() {

																					// Get the input element and its value
																					var i = $("#citi");

																					var val = i
																							.val();

																					// Send request only if user types alphabet
																					// because auto.jsp returns names of companies
																					// which contains only alphabets
																					if (val
																							.match(/^[A-z]+$/)) {
																						// Send request and get the data
																						$
																								.get(
																										"List.jsp?citi="
																												+ val,
																										function(
																												data) {

																											// Get each item separated by new line
																											var items = data
																													.split("\n");

																											// put those items in autocomplete! That's it!
																											i
																													.autocomplete({
																														source : items
																													});
																										});
																					}

																				});
															</script> -->
															<div class="panel panel-default">
																<div class="panel-heading">Enter a City</div>
																<div class="panel-body">
																	<div class="panel-body">
																		<div class="form-group">
																			<input type="text" class="form-control" id="citi"
																				name="city" placeholder="Enter city" required>
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