<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>File Upload to Database</h1>
	<form name="fileform" method="post" action="uploadServlet"
		enctype="multipart/form-data">
		<label for="firstName">First Name:</label>
                                    <input type="text" name="firstName" size="50" placeholder="Enter Your FirstName" required/><br><br>
                                    <label for="lastName">Last Name: </label>
                                    <input type="text" name="lastName" size="50" placeholder="Enter Your LastName" required/><br><br>
                                    <label for="photo"> Portrait Photo:  </label>
                                    <input type="file" name="photo" size="50" placeholder="Upload Your Image" required/><br><br>
                                        <input type="submit" value="Save">
	</form>

</body>
</html>