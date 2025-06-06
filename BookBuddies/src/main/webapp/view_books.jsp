<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.DAO.*"%>
<%@page import="com.DB.*"%>
<%@page import="com.entity.*"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_Components/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%
	User u = (User) session.getAttribute("userobj");
	%>
	<%@include file="all_Components/navbar.jsp"%>
	<%
	int bid = Integer.parseInt(request.getParameter("bid"));
	BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
	BookDtls b = dao.getBookById(bid);
	%>
	<div class="container p-3">
		<div class="row">

			<div class="col-md-6 text-center p-5 border bg-white">
				<img src="book/<%=b.getPhotoName()%>"
					style="height: 150px; width: 120px"><br>
				<h4 class="mt-3">
					Book Name: <span class="text-success"><%=b.getBookName()%> </span>
				</h4>
				<h4>
					Author Name: <span class="text-success"><%=b.getAuthor()%> </span>
				</h4>
				<h4>
					Category: <span class="text-success"><%=b.getBookCategory()%>
					</span>
				</h4>
			</div>

			<div class="col-md-6 text-center p-5 border bg-white">
				<h2><%=b.getBookName()%></h2>
				<%
				if ("Old".equals(b.getBookCategory())) {
				%>
				<h5 class="text-primary">Contact To Seller</h5>
				<h5 class="text-primary">
					<i class="far fa-envelop"></i>Email:
					<%=b.getEmail()%></h5>
				<%
				}
				%>
				<div class="row p-3">

					<div class="col-md-4 text-danger text-center p-2">
						<p>
							<i class="fas fa-money-bill-wave fa-2x"></i>
						</p>
						<p>Cash On Delivery</p>
					</div>

					<div class="col-md-4 text-danger text-center p-2">
						<p>
							<i class="fas fa-undo-alt fa-2x"></i>
						</p>
						<p>Return Available</p>
					</div>

					<div class="col-md-4 text-danger text-center p-2">
						<p>
							<i class="fas fa-truck-moving fa-2x"></i>
						</p>
						<p>Free Shipping</p>
					</div>

				</div>
				<%
				if ("Old".equals(b.getBookCategory())) {
				%>
				<div class="text-center p-3">
					<a href="index.jsp" class="btn btn-success"><i
						class="fas fa-cart-plus"></i> Continue Shopping </a> <a href=""
						class="btn btn-danger"><i
						class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice()%></a>
				</div>
				<%
				} else {
				%>
				<div class="text-center p-3">
					<%-- <a href="" class="btn btn-primary"><i class="fas fa-cart-plus"></i>
						Add Cart</a> <a href="" class="btn btn-danger"><i
						class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice() %></a> --%>
					<%
					if (u == null) {
					%>
					<a href="login.jsp" class="btn btn-danger "><i
						class="fas fa-cart-plus"></i> Add Cart</a>
						 <a href="" class="btn btn-danger"><i
						class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice() %></a>
					<%
					} else {
					%>
					<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>"
						class="btn btn-primary"><i class="fas fa-cart-plus"></i>
						Add Cart</a>
						 <a href="" class="btn btn-danger"><i
						class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice() %></a> 
					<%
					}
					%>
				</div>
				<%
				}
				%>

			</div>

		</div>
	</div>
	<div style="margin-top: 10%;">
		<%@include file="all_Components/footer.jsp"%>
	</div>
</body>
</html>