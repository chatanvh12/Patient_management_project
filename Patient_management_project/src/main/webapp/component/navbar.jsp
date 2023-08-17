<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-success ">
	<a class="navbar-brand" href="#"><i
		class="fa-solid fa-house-medical"></i> Shweta HealthCare Center</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
		<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
			<c:if test="${ empty userObj}">
				<li class="nav-item"><a class="nav-link text-white" aria-current="page"
					href="./Adminlogin.jsp"><i class="fa-solid fa-right-to-bracket"></i>ADMIN</a>
				<li class="nav-item"><a class="nav-link text-white" 
					href="./Doctorlogin.jsp">DOCTOR</a>
				<li class="nav-item"><a class="nav-link text-white " href="./Appointment.jsp">APPOINTMENT</a>
				<li class="nav-item"><a class="nav-link text-white "
					href="./Userlogin.jsp">USER</a>
			</c:if>


			<c:if test="${not empty userObj}">
				<li class="nav-item"><a class="nav-link active text-white" aria-current="page"
					href="./Appointment.jsp">APPOINTMENT</a>
				<li class="nav-item"><a class="nav-link active text-white" aria-current="page"
					href="./viewappointment.jsp">VIEW APPOINTMENT</a></li>
					<div class="dropdown">
						<button class="btn btn-success dropdown-toggle" type="button"
							id="dropdownMenuButton" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"><i class="fa-regular fa-user"></i> ${userObj.getName()}</button>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<ul>
							<li><a class="dropdown-item" href="./updateuserpass.jsp">Change Password</a> </li>
							<li><a class="dropdown-item" href="./userlogout">Logout</a></li>
						</ul>
						</div>
					</div>
			</c:if>
		</ul>
	</div>
</nav>