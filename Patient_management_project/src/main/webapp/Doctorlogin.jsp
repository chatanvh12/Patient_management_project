<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.doctor.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="component/allCss.jsp"%>
<title>Admin Login</title>
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
	<div class="container p-5  ">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card shadow">
					<div class="card-body">
						<p class="fs-4">
						<h3 class="text-center">Doctor's Login</h3>
						</h1>
						</p>
						<c:if test="${not empty succmsg }">
							<p class="text-center text-success h5">${succmsg}</p>
							<c:remove var="succmsg" scope="session" />
							<!-- % session.removeAttribute("succmsg"); %-->
						</c:if>
						<c:if test="${not empty errormsg }">
							<p class="text-center text-danger h5">${errormsg}</p>
							<c:remove var="errormsg" scope="session" />
						</c:if>
						<form action="doctorlogin" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email" name="user">
								<small id="emailHelp" class="form-text text-muted">We'll
									never share your email with anyone else.</small>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" name="pass">
							</div>
							<button type="submit" class="btn btn-success form-control">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>