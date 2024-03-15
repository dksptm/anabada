<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Single Page Header start -->
<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">로그인(테스트중)</h1>
	<ol class="breadcrumb justify-content-center mb-0">
		<li class="breadcrumb-item"><a href="#">Home</a></li>
		<li class="breadcrumb-item"><a href="#">Pages</a></li>
		<li class="breadcrumb-item active text-white">Checkout</li>
	</ol>
</div>
<!-- Single Page Header End -->

<!-- Checkout Page Start -->
<div class="container-fluid py-5">
	<div class="container py-5">
		<h1 class="mb-4 row justify-content-center">다이어리.</h1>
		<form action="diaryAdd.do" method="post" id="sign">
			<div class="row g-3 justify-content-center">
				<div class="col-md-12 col-lg-6 col-xl-7">
					<div class="form-item">
						<label class="form-label my-3" for="memberNum">숫자입력<sup>*</sup></label> <input
							type="text" class="form-control" name="memberNum" id="memberNum">
					</div>
					<div class="form-item">
						<label class="form-label my-3" for="member_pw"><sup>*</sup></label> <input
							type="text" class="form-control" name="member_pw" id="member_pw">
					</div>
					<div class="form-item">
						<label class="form-label my-3">비밀번호 재입력<sup>*</sup></label> <input
							type="text" class="form-control"
							placeholder="비밀번호를 다시 입력하세요.">
					</div>
					<div class="form-item">
						<label class="form-label my-3" for="member_name">이름<sup>*</sup></label> <input
							type="text" class="form-control" name="member_name" id="member_name">
					</div>
					<div class="form-item">
						<label class="form-label my-3" for="member_phone">전화번호<sup>*</sup></label> <input
							type="text" class="form-control" name="member_phone" id="member_phone">
					</div>
					<div class="form-check my-3">
						<input type="checkbox" class="form-check-input" id="Account-1"
							name="Accounts" value="Accounts"> <label
							class="form-check-label" for="Account-1">Create an
							account?</label>
					</div>
					<hr>
					<div class="d-flex text-center align-items-center justify-content-between pt-4">
						<button type="submit" id="signBtn" class="btn border-secondary py-3 px-4 me-4 w-100 text-primary" style="background-color: #F2EFE5;">가입하기</button>
						<button type="reset" class="btn btn-outline-dark py-3 px-4 w-100 text-primary">취소하기</button>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>
<!-- Checkout Page End -->