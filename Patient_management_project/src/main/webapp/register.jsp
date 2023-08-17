<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="component/allCss.jsp"%>
<title>Reserve Appointment</title>
<style>
.navbar-expand-lg .navbar-collapse {
	display: -webkit-box !important;
	display: -ms-flexbox !important;
	display: flex !important;
	-ms-flex-preferred-size: auto;
	flex-basis: auto;
	justify-content: right;
}
.shadow {
	box-shadow: 2px 4px 8px 0 rgba(0, 0, 0, 0.2), 2px 6px 20px 0
		rgba(0, 0, 0, 0.19);
		
}
.length {
	width: 100%;
	height: 100vh;
	
}
</style>
</head>
<body>
	<%@ include file="component/navbar.jsp"%>
		
	<div class="container p-5">
	 <div class="row">
	  <div class="col-md-8 offset-md-2">
	   <div class="card shadow">
		 <div class="card-body">
		 <p><h3 class="text-center">Sign up</h3></p>
		 
		<form action="registerservlet" method="post">
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputEmail4">Name</label> <input type="text"
						class="form-control" id="inputEmail4" placeholder="name" name="name" required>
				</div>
				<div class="form-group col-md-6">
					<label for="inputPassword4">Contact NO.</label> <input type="text"
						class="form-control" id="inputPassword4" placeholder="Contact No." name="contact" required>
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputEmail4">Email</label> <input type="email"
						class="form-control" id="inputEmail4" placeholder="Email" name="email" required>
				</div>
				<div class="form-group col-md-6">
					<label for="inputPassword4">D.O.B</label> <input type="date"
						class="form-control" id="inputPassword4" placeholder="date of birth" name="dob" required>
				</div>
			</div>
			<div class="form-group">
				<label for="inputAddress">Address</label> <input type="text"
					class="form-control" id="inputAddress" placeholder="1234 Main St" name="address" required>
			</div>
			<div class="form-group">
				<label for="inputAddress2">Address 2</label> <input type="text"
					class="form-control" id="inputAddress2"
					placeholder="Apartment, studio, or floor" name="address2" required>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputCity">City</label> <input type="text"
						class="form-control" id="inputCity" name="city" required>
				</div>
				<div class="form-group col-md-4">
					<label for="inputState">State</label> 
					<input type="text" id="inputState" name="state" required>
				</div>
				<div class="form-group col-md-2">
					<label for="inputZip">Pin..</label> <input type="text"
						class="form-control" id="inputZip" name="pin" required>
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="Password">Password</label> <input type="Password"
						class="form-control" id="Password" placeholder="Password" name="pass" required>
				</div>
				<div class="form-group col-md-6">
					<label for="Conform Password">Conform Password</label> <input type="password"
						class="form-control" id="Conform Password" placeholder="Conform Password" name="pass2" required>
				</div>
			</div>
			<button type="submit" class="btn btn-success form-control">Sign in</button>
		 
		</form>
		 </div>
	   </div>
	  </div>
	 </div>	
	</div>
</body>
</html>