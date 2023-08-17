<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reset Password</title>
<%@ include file="../component/allCss.jsp"%>
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
	text-align: center;
	font-size: xxx-large;
}
</style>
</head>
<body>
	<%@ include file="component/navbar.jsp"%>
		<c:if test="${empty userObj }">
		<c:redirect url="Userlogin.jsp"></c:redirect>
	</c:if>
<div class="container p-5  ">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card shadow">
					<div class="card-body">
						<p class="fs-4">
						<h3 class="text-center">Change Password</h3>
						</p>
						<c:if test="${not empty succmsg }">
							<p class="test-center text-success">${succmsg}</p>
							<c:remove var="succmsg" scope="session" />
							<!-- % session.removeAttribute("succmsg"); %-->
						</c:if>
						<c:if test="${not empty errormsg }">
							<p class="test-center text-danger fs-3">${errormsg}</p>
							<c:remove var="errormsg" scope="session" />
						</c:if>
						<form action="userchanmgepass" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email"
									name="email">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">New Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" name="pass">
							</div>
							<button type="submit" class="btn btn-success form-control">Update Password</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>