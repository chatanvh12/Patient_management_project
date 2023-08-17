<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import="com.admin.*"%>
<%@ page import="com.modal.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="../component/allCss.jsp"%>
<title>Add Doctor</title>
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
	<div class=" container p-2 ">
		<div class="row">
		
			<div class="col-md-6 offset-3">
				<div class="card shadow">
					<div class="card-body">
					<p class="h5 text-center">Edit ADD Info</p>
							<c:if test="${not empty succmsg }">
								<p class="text-center text-success h5">${succmsg}</p>
								<c:remove var="succmsg" scope="session" />
								<!-- % session.removeAttribute("succmsg"); %-->
							</c:if>
							<c:if test="${not empty errormsg }">
								<p class="text-center text-danger h5">${errormsg}</p>
								<c:remove var="errormsg" scope="session" />
							</c:if>
							<%
							int id=(Integer)session.getAttribute("id");
							Admindao ad=new Admindao();
							Doctor dr=ad.getdoctorbyid(id);
							
							%>
							<form action="../updatedoctor" method="post">
                              <input type="hidden" value="<%=(Integer)session.getAttribute("id") %>" name="id">
								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="inputFirst">Name<span
											class="text-danger h5">*</span></label> <input type="text"
											class="form-control" value="<%=dr.getName()%>"id="inputFirst" placeholder="FullName"
											name="name" required>
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="mobile">Mobile number<span
											class="text-danger h5">*</span></label> <input type="text"
											class="form-control" value="<%=dr.getMobile_no() %>" id="mobile" placeholder="Middle Name"
											name="mobile" required>
									</div>
									<div class="form-control  col-md-12">
										<div class="form-group">
											<label for="inputEmail4">Email<span
												class="text-danger h5">*</span></label> <input type="email"
												class="form-control"value="<%=dr.getEmail()%>" id="inputEmail4" placeholder="Email"
												name="email" required>
										</div>
									</div>
								</div>
								
								<div class="form-group">
									<label for="inputAddress">Address<span
										class="text-danger h5">*</span></label> <input type="text" value="<%=dr.getAddress() %>"
										class="form-control" id="inputAddress"
										placeholder="1234 Main St" name="address" required>
								</div>



								<button type="submit" class="btn btn-success form-control">UPDATE
									DOCTOR</button>
							</form>
						</div>
					</div>
				</div>
				
			</div>
		</div>
</body>
</html>