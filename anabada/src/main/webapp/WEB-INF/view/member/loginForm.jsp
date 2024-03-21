<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Single Page Header start -->
<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">로그인(완료)</h1>
	<ol class="breadcrumb justify-content-center mb-0">
		<li class="breadcrumb-item"><a href="#">${member }</a></li>
		<li class="breadcrumb-item active text-white">Checkout</li>
	</ol>
</div>
<!-- Single Page Header End -->

<!-- Checkout Page Start -->
<div class="container-fluid py-5">
	<div class="container py-5">
		<h1 class="mb-4 row justify-content-center">${!empty member_id ? '비밀번호 다시 입력해주세요.' : '로그인 정보를 입력해주세요.' }</h1>
		<form action="login.do?login=login&mno=mno" method="post" id="sign">
			<div class="row g-3 justify-content-center">
				<div class="col-md-12 col-lg-6 col-xl-7">
					<div class="form-item">
						<label class="form-label my-3" for="member_id">이메일<sup>*</sup></label> 
						<input type="text" required class="form-control" name="member_id" id="member_id" 
						value="<c:out value="${!empty member_id ? member_id : '' }"></c:out>">
						
					</div>
					<div class="form-item">
						<label class="form-label my-3" for="member_pw">비밀번호<sup>*</sup></label> <input
							type="text" class="form-control" name="member_pw" id="member_pw" required>
					</div>
					<div class="d-flex text-center align-items-center justify-content-between pt-4">
						<button type="submit" id="signBtn" class="btn border-secondary py-3 px-4 me-4 w-100 text-primary" style="background-color: #F2EFE5;">로그인</button>
						<button type="reset" class="btn btn-outline-dark py-3 px-4 w-100 text-primary">다시입력</button>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>
<!-- Checkout Page End -->

