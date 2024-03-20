<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<form action="removeReview.do">	
	<section class="py-5">
		<div class="container px-5 mb-5">
			<div class="text-center mb-5">
				<h1 class="display-5 fw-bolder mb-0">
					<span class="text-gradient d-inline">후기목록</span>
				</h1>
			</div>
			<div class="row gx-5 justify-content-center">
				<div class="col-lg-11 col-xl-9 col-xxl-8">
					<!-- Project Card 1-->
					<c:forEach var="review" items="${list }">
						<div class="card overflow-hidden shadow rounded-4 border-0 mb-5">
							<div class="card-body p-0">
								<div class="d-flex align-items-center">
									<div class="p-5">
										<h2 class="fw-bolder">${review.reviewNum }</h2>
										<h2>${review.memberName }님의후기</h2>
										<p>${review.reviewDate }</p>
										<p>${review.reviewComment }</p>
										<c:choose>
											<c:when test="${review.memberName eq memberName }">
												<button type="button" class="btn btn-warning"
													onclick="removeFunc()">삭제</button>
											</c:when>
											<c:otherwise>
												<button type="button" class="btn btn-warning" disabled
													onclick="removeFunc()">삭제</button>
											</c:otherwise>
										</c:choose>
									</div>

								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>
</form>


<script>
const reviewNum = "${review.reviewNum }";


function removefunc() {
	let form = document.querySelector('form');
}


	
</script>