<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.admin.*"%>
<%@ page import="com.modal.*"%>
<%@ page import="java.util.*"%>
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
	<c:if test="${empty userObj }">
		<c:redirect url="Userlogin.jsp"></c:redirect>
	</c:if>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-8 offset-md-2">
				<div class="card shadow">
					<div class="card-body">
						<p>
						<h3 class="text-center">Appointment</h3>
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
						<form action="Appintment" method="post">
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputname">Name<span class="text-danger h5">*</span></label>
									<input type="text" class="form-control" id="inputname"
										placeholder="name" name="name" required>
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Contact No.<span
										class="text-danger h5">*</span></label> <input type="text"
										class="form-control" id="inputPassword4"
										placeholder="Contact No." name="mobile" required>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Email<span
										class="text-danger h5">*</span></label> <input type="email"
										class="form-control" id="inputEmail4" placeholder="Email"
										name="email" required>
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Age<span
										class="text-danger h5">*</span></label> <input type="number"
										class="form-control" id="inputPassword4" placeholder="Age"
										name="age" required>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputCity">Disease<span
										class="text-danger h5">*</span></label> <input type="text"
										class="form-control" id="inputCity" name="disease" required>
								</div>
								<div class="form-group col-md-6">
									<label for="inputState">Doctor</label> <select id="inputState"
										class="form-control" required name="d_id">
										<%
										Admindao ad = new Admindao();
										List<Doctor> list = ad.getdoctor();
										for (Doctor d : list) {
										%>
										<option selected>Choose...</option>
										<!-- option>Recomend me</option-->
										<option value="<%=d.getId()%>"><%=d.getName()%></option>
										<%
										}
										%>
									</select>
								</div>
								<div class="form-group col-md-6">
									<label for="inputCity">Appointment date<span
										class="text-danger h5">*</span></label> <input type="Date"
										class="form-control" id="inputCity" name="apdate" required>
								</div>
								<div class="form-group col-md-6">
									<label>Gender<span class="text-danger h5">*</span></label><br>Male
									<input type="radio" value="male" name="gender">Female
									<input type="radio" name="gender" value="female">
								</div>
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