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
			<c:if test="${not empty AdminObj }">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="adminHome.jsp">Home</a>
				<li class="nav-item"><a class="nav-link active"
					href="./adddoctors.jsp">Doctors</a></li>
					<div class="dropdown">
						<button class="btn btn-success dropdown-toggle" type="button"
							id="dropdownMenuButton" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">Admin</button>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
							<a class="dropdown-item" href="../Adminlogout">Logout</a>  
						</div>
					</div>
			</c:if>
		</ul>
	</div>
</nav>
