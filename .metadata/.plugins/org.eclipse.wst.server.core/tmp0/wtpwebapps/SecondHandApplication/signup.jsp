<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
	String msg = request.getParameter("msg");
	if(msg != null) {
		out.print("<h1>" + msg + "</h1>");
	}
	String pwdmsg = request.getParameter("pwdmssg");
	if(pwdmsg != null) {
		out.print("<h3>" + pwdmsg + "</h3>");
	}
	%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SecondHand</title>
</head>
<body>
<center>
<h2>SignUp here</h2>
</center>
<br>
 <form class="form-horizontal" action ="SignupController">
  <div class="form-group">
    <label class="control-label col-md-4">User:</label>
    <div class="col-md-offset-4 col-md-6">
    	<div class="input-group input-group-lg">

            <span class="input-group-addon">

              <span class="glyphicon glyphicon-envelope" style = "color: blue"></span>

            </span>

            <input type="email" name = "email" class="form-control" placeholder="Enter email" required>

        </div>
      <!-- <input type="email" name = "email" class="form-control" placeholder="Enter email" required> -->
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-4" for="pwd">Password:</label>
    <div class="col-md-offset-4 col-md-6">
    	<div class="input-group input-group-lg">

            <span class="input-group-addon">

              <span class="glyphicon glyphicon-lock" style = "color: blue"></span>

            </span>

            <input type="password" class="form-control" name = "password" placeholder="Enter password" required>

        </div> 	
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-4" for="pwd">Re-enter Password:</label>
    <div class="col-md-offset-4 col-md-6">
    	
    	<div class="input-group input-group-lg">

            <span class="input-group-addon">

              <span class="glyphicon glyphicon-lock" style = "color: blue"></span>

            </span>

            <input type="password" class="form-control" name = "password1" placeholder="Enter password" required>

        </div> 
    </div>
  </div>
  <div class="form-group">
    <div class="col-md-offset-4 col-md-7">
      <button type="submit" class="btn btn-primary">Sign Up</button>
    </div>
  </div>
</form>
<center>
</center>
</body>
</html>