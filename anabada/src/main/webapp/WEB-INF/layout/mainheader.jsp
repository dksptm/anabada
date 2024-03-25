<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<!-- Navbar start -->
		<div class="container-fluid fixed-top">
			<div class="container topbar bg-primary d-none d-lg-block">
				<div class="d-flex justify-content-between">
					<div class="top-info ps-2">
						<small class="me-3"><i class="fas fa-map-marker-alt me-2 text-secondary"></i> <a href="#"
								class="text-white">대구 중구 중앙대로 403</a></small>
						<small class="me-3"><i class="fas fa-envelope me-2 text-secondary"></i><a href="#"
								class="text-white">yedam@ydeam.do</a></small>
					</div>
					<div class="top-link pe-2">
					</div>
				</div>
			</div>

			<div class="container px-0">
				<nav class="navbar navbar-light bg-white navbar-expand-xl">
					<a href="index.jsp" class="navbar-brand">
						<h1 class="text-primary display-6">ANABADA</h1>
					</a>
					<!-- 메뉴영역 start. -->
					<div class="collapse navbar-collapse bg-white" id="navbarCollapse">
					
						<!-- 중간메뉴 start. -->
						<div class="navbar-nav mx-auto">

							<!-- 다른 메뉴들. -->
							 <!-- <a href="itemList.do" class="nav-item nav-link">상품리스트</a> -->
							<%-- <div class="nav-item dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">페이지들</a>
								<div class="dropdown-menu m-0 bg-secondary rounded-0">
									<a href="reviewList.do?memberNum=${memeber.memberNum }" class="dropdown-item">리뷰리스트</a>
									<a href="shopInfo.do" class="dropdown-item">가게정보(판매자정보)(ㅈㄱ)</a>
									<a href="myPage.do?memberNum=${member.memberNum }" class="dropdown-item">마이페이지(ㅈㄱ)</a>
									<a href="myInfo.do?memberNum=${memeber.memberNum }" class="dropdown-item">내정보페이지(ㅈㄱ)</a>
									<a href="addreviewForm.do" class="dropdown-item">후기작성페이지(ㅇㅈ)</a>
									<a href="purchaseList.do?memberNum=${member.memberNum }" class="dropdown-item">나의구매(ㅈㅇ)</a>
									<a href="sellItemList.do?memberNum=${member.memberNum }" class="dropdown-item">나의판매(ㅈㅇ)</a>
									<a href="negoForm.do?memberNum=${member.memberNum }" class="dropdown-item">네고(ㅈㅇ)</a>
								</div>
							</div>  --%>
						 </div> 
						<!-- 중간메뉴 end.-->
						
						<!-- 회원메뉴(우측메뉴) start. -->
						<c:choose>
							<c:when test="${empty member.memberName }">
							<div class="d-flex m-3 me-0">
								<a href="loginForm.do" class="position-relative me-4 my-auto">
									<i class="fas fa-user fa-2x"></i> <sup>로그인</sup>
								</a>
								<a href="signUpForm.do" class="position-relative me-4 my-auto">
									<i class="fas fa-solid fa-user-plus fa-2x"></i> <sup>회원가입</sup>
								</a>
							</div>
							</c:when>
							<c:otherwise>
							<div class="d-flex m-3 me-0">
								<a href="login.do?login=logout" class="position-relative me-4 my-auto">
									<i class="fas fa-user fa-2x"></i> <sup>로그아웃</sup>
								</a>
								<a href="addItemForm.do" class="position-relative me-4 my-auto">
									<i class="fas fa-store fa-2x"></i><sup>판매하기</sup>
								</a>
								<a href="cartList.do?memberNum=${member.memberNum}" class="position-relative me-4 my-auto">
									<i class="fa fa-shopping-bag fa-2x"></i><sup>찜</sup>	
								</a>
								<!-- <a href="diaryList.do" class="position-relative me-4 my-auto">
									<i class="fas fa-regular fa-calendar fa-2x"></i> <sup>나의일정</sup>
								</a> -->
								<a href="myPage.do?mno=${member.memberNum }" class="position-relative me-4 my-auto">
									<i class="fas fa-house-user fa-2x"></i> <sup>마이페이지</sup>
								</a>
							</div>
							</c:otherwise>
						</c:choose>
						<!-- 회원메뉴(우측메뉴) start. -->
					</div>
					<!-- 메뉴영역 end. -->
				</nav>
			</div>
		</div>
		<!-- Navbar End -->
		