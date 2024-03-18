<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!-- Single Page Header start -->
<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">장바구니</h1>
	<ol class="breadcrumb justify-content-center mb-0">
		<!-- <li class="breadcrumb-item"><a href="#" onclick="">cartList<i class="fas fa-star"></i></a></li> -->
		<li class="breadcrumb-item active text-white">cartList.do</li>
	</ol>
</div>
<!-- Single Page Header End -->

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>후기페이지</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<!-- <link href="css/styles.css" rel="stylesheet" /> -->
<style>

section{
    margin: 0 auto;
    width: 600px;
    height: 700px;
    padding: 10px;
    text-align: center;
    float: left;
}
.box {
float: left;
}
</style>

</head>
<body>
	<!-- Header-->
	<header class="py-5">
		<div class="container px-lg-5" justify-content-center>
			<div class="p-4 p-lg-5 bg-light rounded-3 text-center">
				<div class="m-4 m-lg-5">
					<h1 class="display-5 fw-bold">후기페이지</h1>
					<c:forEach begin="1" end="${review.reviewScore }">
											<div class="bi-star-fill"></div>
											</c:forEach>
					
					<!--  <a class="btn btn-primary btn-lg" href="#!">Call to action</a> -->
				</div>
			</div>
		</div>
	</header>
	<!-- Page Content-->
	<section>
	<c:forEach var="review" items="${list }">
		<div class="box" content-center>
			<div class="card bg-light border-0 h-100">
				<div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
					</div>
					<h2 class="fs-4 fw-bold">${review.memberName }님의 후기</h2>
					<h2 class="fs-4 fw-bold">후기날짜 ${review.reviewDate}</h2>
					<p class="mb-0">${review.reviewComment }</p>
				</div>
			</div>
		</div>
	</c:forEach>
	</section>
</body>
</html>




<script>

$.ajax({
    url: 'reviewList.do',
    method: 'post',
    dataType: 'json'
  })
  .done(result => {
    result.forEach(review => {
    })
  })
  .fail(err => console.log(err))

</script>




<!--  후기입력 페이지 <div class="col-lg-6">
							<div class="review_box">
								<h4>Add a Review</h4>
								<p>Your Rating:</p>
								<ul class="list">
									<li><a href="#"><i class="fa fa-star"></i></a></li>
									<li><a href="#"><i class="fa fa-star"></i></a></li>
									<li><a href="#"><i class="fa fa-star"></i></a></li>
									<li><a href="#"><i class="fa fa-star"></i></a></li>
									<li><a href="#"><i class="fa fa-star"></i></a></li>
								</ul>
								<p>Outstanding</p>
                <form action="#/" class="form-contact form-review mt-3">
                  <div class="form-group">
                    <input class="form-control" name="name" type="text" placeholder="Enter your name" required>
                  </div>
                  <div class="form-group">
                    <input class="form-control" name="email" type="email" placeholder="Enter email address" required>
                  </div>
                  <div class="form-group">
                    <input class="form-control" name="subject" type="text" placeholder="Enter Subject">
                  </div>
                  <div class="form-group">
                    <textarea class="form-control different-control w-100" name="textarea" id="textarea" cols="30" rows="5" placeholder="Enter Message"></textarea>
                  </div>
                  <div class="form-group text-center text-md-right mt-3">
                    <button type="submit" class="button button--active button-review">Submit Now</button>
                  </div>
                </form>
							</div>
						</div> -->