<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!-- Single Page Header start -->
<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">테스트 페이지</h1>
	<ol class="breadcrumb justify-content-center mb-0">
		<li class="breadcrumb-item"><a href="testAjax.do">testAjax.do</a></li>
		<li class="breadcrumb-item active text-white">여기는 test.do</li>
	</ol>
</div>
<!-- Single Page Header End -->


<!-- Tastimonial Start -->
<div class="container-fluid testimonial py-5">
	<div class="container py-5">
		<div class="testimonial-header text-center">
			<h4 class="text-primary">테스트 페이지</h4>
			<h1 class="display-5 mb-5 text-dark">테스트 중입니다!</h1>
		</div>
		<div class="owl-carousel testimonial-carousel">
			<div id="test" class="testimonial-item img-border-radius bg-light rounded p-4">
				<div class="position-relative">
					<i class="fa fa-quote-right fa-2x text-secondary position-absolute"
						style="bottom: 30px; right: 0;"></i>
					<div class="mb-4 pb-4 border-bottom border-secondary">
						<p class="mb-0">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Doloremque optio error minus voluptate aperiam</p>
					</div>
					<div class="d-flex align-items-center flex-nowrap">
						<div class="bg-secondary rounded">
							<img src="static/img/dog12.jpg" class="img-fluid rounded"
								style="width: 100px; height: 100px;" alt="">
						</div>
						<div class="ms-4 d-block" id="info">
							<h4 class="text-dark" id="name">강아지</h4>
							<p class="m-0 pb-3" id="phone">설명</p>
							<div class="d-flex pe-5">
								<i class="fas fa-star text-primary"></i> <i
									class="fas fa-star text-primary"></i> <i
									class="fas fa-star text-primary"></i> <i
									class="fas fa-star text-primary"></i> <i class="fas fa-star"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Tastimonial End -->

<script>

$.ajax({
    url: 'testAjax.do',
    method: 'post',
    dataType: 'json'
  })
  .done(result => {
    console.log(result);
    result.forEach(member => {
		console.log(member);
    });
  })
  .fail(err => console.log(err))

</script>