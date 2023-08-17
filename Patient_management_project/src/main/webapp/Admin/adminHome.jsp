<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.admin.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="../component/allCss.jsp"%>
<title>Admin Home</title>
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
	<%@ include file="navbar.jsp"%>
	<c:if test="${empty AdminObj }">
		<c:redirect url="../Adminlogin.jsp"></c:redirect>
	</c:if>
	<div class="container p-5">
		<p class="text-center h3">Admin Dashboard</p>
		<c:if test="${not empty succmsg }">
			<p class="text-center text-success h5">${succmsg}</p>
			<c:remove var="succmsg" scope="session" />
			<!-- % session.removeAttribute("succmsg"); %-->
		</c:if>
		<c:if test="${not empty errormsg }">
			<p class="text-center text-danger h5">${errormsg}</p>
			<c:remove var="errormsg" scope="session" />
		</c:if>
		<div class="row">
			<div class="col-sm-4">
				<div class="card shadow">
					<div class="card-body">
						<p class="length text-success">
							<i class="fa-solid fa-user-doctor"></i>
						</p>
						<h5 class="card-title text-center text-success">Doctors</h5>
						<p class="card-text">With supporting text below as a natural
							lead-in to additional content.</p>
					</div>
				</div>
			</div>
			<div class="col-sm-4 ">
				<div class="card shadow">
					<div class="card-body">
						<p class="length text-success">
							<i class="fa-solid fa-users"></i>
						</p>
						<h5 class="card-title text-center text-success">Users</h5>
						<p class="card-text">With supporting text below as a natural
							lead-in to additional content.</p>
					</div>
				</div>
			</div>
			<div class="col-sm-4  mt-2">
				<div class="card shadow">
					<div class="card-body">
						<p class="length text-success">
							<i class="fa-solid fa-calendar-check"></i>
						</p>
						<h5 class="card-title text-center text-success">Appointments</h5>
						<p class="card-text">With supporting text below as a natural
							lead-in to additional content.</p>
					</div>
				</div>
			</div>
			<div class="col-sm-4 " data-toggle="modal"
				data-target="#exampleModal">
				<div class="card shadow">
					<div class="card-body">
						<p class="length text-success">
							<i class="fa-brands fa-medium"></i>
						</p>
						<h5 class="card-title text-center text-success">Specialists</h5>
						<p class="card-text">With supporting text below as a natural
							lead-in to additional content.</p>
					</div>
				</div>
			</div>

			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Add
								Speciality</h5>
						</div>
						<div class="modal-body">
							<form action="../Addspeciality" method="post">
								<div class="form-group">
									<input class="form-control" type="text"
										placeholder="Add Speciality" name="speciality" required>
								</div>
								<div class="modal-footer">
									<button type="submit" class="btn btn-success">ADD</button>
								</div>
							</form>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>