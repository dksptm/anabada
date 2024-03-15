<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!-- Single Page Header start -->
<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">테스트 페이지</h1>
	<ol class="breadcrumb justify-content-center mb-0">
		<li class="breadcrumb-item"><a href="#" onclick="testfunc()">testAjax<i class="fas fa-star"></i></a></li>
		<li class="breadcrumb-item active text-white">test.do</li>
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
		
		<div>
		${list }
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
    result.forEach(member => {
    })
  })
  .fail(err => console.log(err))

</script>