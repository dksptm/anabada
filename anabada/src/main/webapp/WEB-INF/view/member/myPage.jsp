<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Single Page Header start -->
<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">마이페이지</h1>
	<ol class="breadcrumb justify-content-center mb-0">
		<!-- <li class="breadcrumb-item"><a href="#" onclick="">cartList<i class="fas fa-star"></i></a></li> -->
		<li class="breadcrumb-item active text-white">myPage.do</li>
	</ol>
</div>
<!-- Single Page Header End -->

<html>
<head>
<title>My List</title>
<style>
table {
	width: 80%;
	border-collapse: collapse;
}

th, td {
	border: 1px solid black;
	padding: 8px;
	text-align: left;
}

th {
	background-color: #f2f2f2;
}
</style>
</head>
<body>
	<div class="container">
		<div>
			<h2>판매목록</h2>
			<table>
				<thead>
					<tr>
						<th>상품명</th>
						<th>가격</th>
						<th>상태</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${myList}" var="item">
						<tr>
							<td>${item.itemName }</td>
							<td>${item.itemPrice }</td>
							<td>${item.itemStatus}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>