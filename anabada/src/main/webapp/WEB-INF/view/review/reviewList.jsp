<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- <script src="//cdn.datatables.net/2.0.2/js/dataTables.min.js"></script> -->

<!-- Single Page Header start -->
<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">후기</h1>
	<ol class="breadcrumb justify-content-center mb-0">
		<!-- <li class="breadcrumb-item"><a href="#" onclick="">cartList<i class="fas fa-star"></i></a></li> -->
		<li class="breadcrumb-item active text-white">reviewList.do</li>
	</ol>
</div>
<!-- Single Page Header End -->

<form action="removeReview.do">
	
		<!-- Projects Section-->
		<section class="py-5">
			<div class="container px-5 mb-5">
				<div class="text-center mb-5">
					<h1 class="display-5 fw-bolder mb-0">
						<span class="text-gradient d-inline">후기목록</span>
					</h1>
			</div>
		</div>
		</section>
				<div class="row gx-5 justify-content-center">
					<div class="col-lg-11 col-xl-9 col-xxl-8">
						<!-- Project Card 1-->
						<c:forEach var="review" items="${list }">
							<div class="card overflow-hidden shadow rounded-4 border-0 mb-5">
								<div class="card-body p-0">
									<div class="d-flex align-items-center">
										<div class="p-5">
											<h2 class="fw-bolder">리뷰번호:${review.reviewNum }</h2>
											<%-- 		<h2>${review.memberNum }님의후기</h2> --%>
											<p>작성날짜 :${review.reviewDate }  ||  작성자 :${member.memberName }</p>
											<p>${review.reviewComment }</p>
											<button type="button" onclick="reviewDel(${review.reviewNum })"
												class="btn btn-success">삭제</button>
											
											<%-- 	<c:choose>
											<c:when test="${review.memberName eq memberName }">
											<button id="deleteReBtn" type="button" class="btn btn-warning">삭제</button>
											</c:when>
											<c:otherwise>
											</c:otherwise>
										</c:choose> --%>
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
</html>

<script>
let mno = '${member.memberNum }';
//console.log('멤버!',mno);
      
function reviewDel(rno) {
      //console.log('리뷰!',rno);
    $.ajax({
      url: 'RemoveReview.do', 
      type: 'get',
      data: { rno : rno,  mno: mno  }, 
      dataType: 'json',
    })
      .done((result) => {
      	console.log(result);
      	location.reload();
      })
      .fail((error) => console.error(err)) 
}
  
</script>

<!-- <button type="submit" class="btn btn-primary">삭제</button> -->
<%-- <c:forEach begin="1" end="${review.reviewScore }">
					<div class="bi-star-fill"></div>
				</c:forEach> --%>
<!-- 
<script> -->

<!--  $.ajax({
>>>>>>> branch 'master' of https://github.com/dksptm/anabada.git
    url: 'reviewList.do',
    method: 'post',
    dataType: 'json'
  })
  .done(result => {
    result.forEach(review => {
    })
  })
  .fail(err => console.log(err));
<<<<<<< HEAD
 */
 
	// 삭제
	$('.deleteBtn').on('click', function(){
		 let reviewNum =$(this).data("reviewNum")
		 console.log(reviewNum)
		 
		 fetch('RemoveReview.do?reviewNum=' + reviewNum)
		 .then(result => result.json())
		 .then(result => {
			 if (result.retCode == "OK") {
				 alert("후기가 삭제되었습니다.")
				 location.reload();
			 } else {
				 alert("후기 삭제 오류.")
			 }
		 })
		 
	}
		 
</script>


=======
} -->
