<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="component/allCss.jsp"%>

<title>Welcome to Shweta Healthcare center</title>
<style>
.navbar-expand-lg .navbar-collapse {
	display: -webkit-box !important;
	display: -ms-flexbox !important;
	display: flex !important;
	-ms-flex-preferred-size: auto;
	flex-basis: auto;
	justify-content: right;
}

.length {
	width: 100%;
	height: 40vh;
}

.cards {
	margin-top: 1rem !important;
	justify-content: space-around;
	display: flex;
	flex-direction: row;
	flex-wrap: wrap;
}

.shadow {
	box-shadow: 2px 4px 8px 0 rgba(0, 0, 0, 0.2), 2px 6px 20px 0
		rgba(0, 0, 0, 0.19);
}
</style>
</head>
<body>
	<%@ include file="component/navbar.jsp"%>
	<!-- ---------------------slider----------------------- -->
	<div class="container mt-2">
		<div class="row">
			<div id="carouselExampleIndicators" class="carousel slide length"
				data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carouselExampleIndicators" data-slide-to="0"
						class="active"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img class="d-block w-100 length" src="image/download.jpeg"
							alt="First slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100 length" src="image/images.jpeg"
							alt="Second slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100 length" src="image/slider3.jpeg"
							alt="Third slide">
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleIndicators"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
	<!-- -----------------------------spaciality------------------------- -->
	<div class="container">
		<div class="row mt-3">
			<div class="row cards col-md-9">
				<div class="card col-md-5 shadow m-2">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">This card has supporting text below as a
							natural lead-in to additional content.</p>
					</div>
				</div>
				<div class="card col-md-5 shadow m-2">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">This card has supporting text below as a
							natural lead-in to additional content.</p>
					</div>
				</div>
				<div class="card col-md-5 shadow">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">This is a wider card with supporting text
							below as a natural lead-in to additional content.</p>
					</div>
				</div>
				<div class="card col-md-5 shadow">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">This is a wider card with supporting text
							below as a natural lead-in to additional content.</p>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<img alt="Doctor images" src=" image/doctor_img.jpeg" class="h-100 ">
			</div>
		</div>
	</div>
	<%@ include file="component/footer.jsp"%>
</body>
</html>