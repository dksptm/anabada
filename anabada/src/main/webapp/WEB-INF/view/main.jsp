<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<!-- Hero Start -->
		<div class="container-fluid py-5 mb-5 hero-header">
			<div class="container py-5">
				<div class="row g-5 align-items-center">
					<div class="col-md-12 col-lg-7">
						<!-- 로그인하면 보여질 문구 -->
						<c:choose>
							<c:when test="${empty memberName }">
								<h4 class="mb-3 text-secondary">Welcome to ANABADA</h4>
							</c:when>
							<c:otherwise>
								<h4 class="mb-3 text-secondary">${memberName}님 환영합니다.</h4>
							</c:otherwise>
						</c:choose>
						<!--  -->
						<h1 class="mb-5 display-3 text-primary">어떤 상품을 찾으시나요? </h1>
						<div class="position-relative mx-auto">
							<input class="form-control border-2 border-secondary w-75 py-3 px-4 rounded-pill" type="number"
								placeholder="Search">
							<button type="submit"
								class="btn btn-primary border-2 border-secondary py-3 px-4 position-absolute rounded-pill text-white h-100"
								style="top: 0; right: 25%;">Search Now</button>
						</div>
					</div>
					<div class="col-md-12 col-lg-5">
						<div id="carouselId" class="carousel slide position-relative" data-bs-ride="carousel">
							<div class="carousel-inner" role="listbox">
								<div class="carousel-item active rounded">
									<img src="static/img/main-1.png" class="img-fluid w-100 h-100 bg-secondary rounded" alt="First slide">
									<a href="#" class="btn px-4 py-2 text-white rounded">보러가기rdddddd</a>
								</div>
								<div class="carousel-item rounded">
									<img src="static/img/main-2.png" class="img-fluid w-100 h-100 rounded" alt="Second slide">
									<a href="#" class="btn px-4 py-2 text-white rounded">보러가기</a>
								</div>
								<div class="carousel-item rounded">
									<img src="static/img/main-3.png" class="img-fluid w-100 h-100 rounded" alt="Second slide">
									<a href="#" class="btn px-4 py-2 text-white rounded">Vesitables</a>
								</div>
							</div>
							<button class="carousel-control-prev" type="button" data-bs-target="#carouselId" data-bs-slide="prev">
								<span class="carousel-control-prev-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Previous</span>
							</button>
							<button class="carousel-control-next" type="button" data-bs-target="#carouselId" data-bs-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Next</span>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Hero End -->
		<c:choose>
		<c:when test="${not empty likeList }">
		<!-- 찜순서대로 10건 조회하기-->
		<div class="container-fluid vesitable py-5">
			<div class="container py-5">
				<h1 class="mb-0">인기상품</h1>
				<div class="owl-carousel vegetable-carousel justify-content-center">
					<c:forEach items="${likeList }" var="item">
						<div class="border border-primary rounded position-relative vesitable-item">
							<div class="vesitable-img">
								<img src="images/${item.itemImage }" class="img-fluid w-100 rounded-top bg-light"
									onerror="this.onerror=null; this.src='static/img/errimg.png';">
							</div>
							<div class="text-white bg-primary px-3 py-1 rounded position-absolute" style="top: 10px; right: 10px;">
								${item.categoryId }</div>
							<div class="p-4 rounded-bottom">
								<h4 style="height:29px;overflow:hidden;">${item.itemName }</h4>
								<p style="height:85px;overflow:hidden;">${item.itemInfo }</p>
								<div class="d-flex justify-content-between flex-lg-wrap">
									<i class="fas fa-heart"></i><span>${item.zzim }</span>
									<p class="text-dark fs-5 fw-bold mb-0 w-100">￦ ${item.itemPrice }</p>
									<a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i
											class="fa fa-shopping-bag me-2 text-primary"></i> 찜하기</a>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		</c:when>
		</c:choose>
		<!-- Vesitable Shop End -->


		<!--아이템날짜 최근 10건 조회하기-->
		<c:choose>
		<c:when test="${not empty recentList }">
		<div class="container-fluid vesitable py-5">
			<div class="container py-5">
				<h1 class="mb-0">최근 등록된 상품</h1>
				<div class="owl-carousel vegetable-carousel justify-content-center">
					<c:forEach items="${recentList }" var="item">
						<div class="border border-primary rounded position-relative vesitable-item">
							<div class="vesitable-img">
								<img src="images/${item.itemImage }" class="img-fluid w-100 rounded-top bg-light"
									onerror="this.onerror=null; this.src='static/img/errimg.png';">
							</div>
							<div class="text-white bg-primary px-3 py-1 rounded position-absolute" style="top: 10px; right: 10px;">
								${item.categoryId }</div>
							<div class="p-4 rounded-bottom">
								<h4 style="height:29px;overflow:hidden;">${item.itemName }</h4>
								<p style="height:85px;overflow:hidden;">${item.itemInfo }</p>
								<div class="d-flex justify-content-between flex-lg-wrap">
									<p class="text-dark fs-5 fw-bold mb-0 w-100">￦ ${item.itemPrice }</p>
									<a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i
											class="fa fa-shopping-bag me-2 text-primary"></i> 찜하기</a>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		</c:when>
		</c:choose>
		<!-- Vesitable Shop End -->