<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Single Page Header start -->
<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">내 정보</h1>
	<ol class="breadcrumb justify-content-center mb-0">
		<!-- <li class="breadcrumb-item"><a href="#" onclick="">cartList<i class="fas fa-star"></i></a></li> -->
		<li class="breadcrumb-item active text-white">myInfo.do</li>
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
			<h1>내 정보</h1>
			<table>
				<thead>
					<tr>
						<th>회원번호</th>
						<th>이름</th>
						<th>아이디</th>
						<th>연락처</th>
						<th>계좌</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${myInfoList}" var="item">
						<tr>
							<td>${item.memberNum}</td>
							<td>${item.memberName}</td>
							<td>${item.memberId}</td>
							<td>${item.memberPhone}</td>
							<td>${item.accountNum}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>