<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
em.warning {
	color: red;
	font-size: 14px;
}
</style>

<!-- Single Page Header start -->
<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">리뷰 등록</h1>
	<ol class="breadcrumb justify-content-center mb-0">
		<li class="breadcrumb-item"><a href="#">Home</a></li>
		<li class="breadcrumb-item"><a href="#">Pages</a></li>
		<li class="breadcrumb-item active text-white">Checkout</li>
	</ol>
</div>
<!-- Single Page Header End -->

${addreview}
<!-- Checkout Page Start -->
<div class="container-fluid py-5">
	<div class="container py-5">
		<h1 class="mb-4 row justify-content-center">리뷰를 작성해주세요</h1>
		<form action="addreview.do" method="post" id="sign">
			<div class="row g-3 justify-content-center">
				<div class="col-md-12 col-lg-6 col-xl-7">

					<div class="form-item">
						<label class="form-label my-3" for="member_pw" required>order_num<sup>*</sup></label>
						<input type="text" class="form-control" name="order_num"
							id="member_pw" required><em></em>
					</div>
					<div class="form-item">
						<label class="form-label my-3" for="member_pw2" required>review_score
							<sup>*</sup>
						</label> <input type="text" class="form-control" name="review_score"
							id="member_pw2" required><em></em>
					</div>
					<div class="form-item">
						<p>review_comment<sup>*</sup></p>
						<textarea name="review_comment" rows="5" cols="80" placeholder="다른 구매자들에게 도움이 되는 후기를 남겨주세요."></textarea><em></em>
					<!-- 	<input type="textarea" class="form-control" name="review_comment"
							id="member_name" required><em></e -->
					</div>
					<hr>
					<div
						class="d-flex text-center align-items-center justify-content-between pt-4">
						<button type="submit" id="addreviewBtn"
							class="btn border-secondary py-3 px-4 me-4 w-100 text-primary"
							style="background-color: #F2EFE5;">리뷰 등록하기</button>
						<button type="reset"
							class="btn btn-outline-dark py-3 px-4 w-100 text-primary">취소하기</button>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>