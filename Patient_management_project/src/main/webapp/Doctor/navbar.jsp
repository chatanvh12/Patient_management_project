<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
	<nav class="navbar navbar-expand-lg navbar-dark bg-success ">
		<a class="navbar-brand" href="#"><i class="fa-solid fa-house-medical"></i> Shweta HealthCare Center</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link "
						aria-current="page" href="doctorHome.jsp">Home</a>
					<li class="nav-item"><a class="nav-link "
						 href="./showPatient.jsp">Patient</a></li>
				    <div class="dropdown">
						<button class="btn btn-success dropdown-toggle" type="button"
							id="dropdownMenuButton" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">Doctor</button>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
							<a class="dropdown-item" href="../doctorlogout">Logout</a>  
						</div>
					</div>
				</ul>
			</div>
	</nav>
