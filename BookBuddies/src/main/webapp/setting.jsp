<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_Components/allCss.jsp"%>
<style type="text/css">
a {
	text-decoration: name;
	color: black;
}

a:hover {
	text-decoration: none;
}
</style>
</head>
<body style="background-color: #cacccb;">
	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp" />
	</c:if>
	<%@include file="all_Components/navbar.jsp"%>

	<div class="container">

		<p>
		<h3 class="text-center">Hello, ${userobj.name }</h3>
		</p>


		<div class="row p-4">
			<div class="col-md-4">
				<a href="sell_book.jsp">
					<div class="card">
						<div class="card-body text-center mt-4">
							<div class="text-primary">
								<i class="fas fa-book-open fa-3x"></i>
							</div>
							<h4>Sell Old Book</h4>
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-4">
				<a href="old_book.jsp">
					<div class="card">
						<div class="card-body text-center mt-4">
							<div class="text-warning">
								<i class="fas fa-book-open fa-3x"></i>
							</div>
							<h4>Your Old Books</h4>
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-4">
				<a href="edit_profile.jsp">
					<div class="card">
						<div class="card-body text-center mt-4">
							<div class="text-primary">
								<i class="fas fa-edit fa-3x"></i>
							</div>
							<h4>Edit Profile</h4>
						</div>
					</div>
				</a>
			</div>


			<div class="col-md-6 mt-5">
				<a href="order.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-danger">
								<i class="fas fa-box-open fa-3x"></i>
							</div>
							<h4>My Order</h4>
							<p>Track Your Order</p>
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-6 mt-5">
				<a href="helpline.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-info">
								<i class="fas fa-user-circle fa-3x"></i>
							</div>
							<h4>Help Center</h4>
							<p>24*7 Service</p>
						</div>
					</div>
				</a>
			</div>

		</div>
	</div>

	<hr>
	<div style="margin-top: 5%;">
		<%@include file="all_Components/footer.jsp"%>
	</div>
</body>
</html>