<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>



${item }
<!-- Modal Search Start -->
<div class="modal fade" id="searchModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-fullscreen">
		<div class="modal-content rounded-0">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">검색</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body d-flex align-items-center">
				<div class="input-group w-75 mx-auto d-flex">
					<input type="search" class="form-control p-3"
						placeholder="keywords" aria-describedby="search-icon-1"> <span
						id="search-icon-1" class="input-group-text p-3"><i
						class="fa fa-search"></i></span>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Modal Search End -->

<!-- Fruits Shop Start-->
<div class="container-fluid fruite py-5">
	<div class="container py-5">
		<h1 class="mb-4">Fresh fruits shop</h1>
		<div class="row g-4">
			<div class="col-lg-12">
				<div class="row g-4">
					<div class="col-xl-3">
						<div class="input-group w-100 mx-auto d-flex">
							<input type="search" class="form-control p-3"
								placeholder="keywords" aria-describedby="search-icon-1">
							<span id="search-icon-1" class="input-group-text p-3"><i
								class="fa fa-search"></i></span>
						</div>
					</div>
					<div class="col-6"></div>
					<div class="col-xl-3">
						<!-- 정렬 -->
						<div
							class="bg-light ps-3 py-3 rounded d-flex justify-content-between mb-4">
							<label for="fruits">정렬</label> <select id="fruits"
								name="fruitlist" class="border-0 form-select-sm bg-light me-3"
								form="fruitform">
								<option value="volvo">최신순</option>
								<option value="saab">인기순</option>
								<option value="opel">낮은 가격순</option>
								<option value="audi">높은 가격순</option>
							</select>
						</div>
					</div>
				</div>

				<!-- 카테고리 -->
				<div class="row g-4">
					<div class="col-lg-3">
						<div class="row g-4">
							<div class="col-lg-12">
								<div class="mb-3">
									<h4>카테고리</h4>
									<ul class="list-unstyled fruite-categorie">
										<li>
											<div class="d-flex justify-content-between fruite-name">
												<a href="#"><i class="fas fa-apple-alt me-2"></i>Apples</a>
												<span>(3)</span>
											</div>
										</li>
										<li>
											<div class="d-flex justify-content-between fruite-name">
												<a href="#"><i class="fas fa-apple-alt me-2"></i>Oranges</a>
												<span>(5)</span>
											</div>
										</li>
										<li>
											<div class="d-flex justify-content-between fruite-name">
												<a href="#"><i class="fas fa-apple-alt me-2"></i>Strawbery</a>
												<span>(2)</span>
											</div>
										</li>
										<li>
											<div class="d-flex justify-content-between fruite-name">
												<a href="#"><i class="fas fa-apple-alt me-2"></i>Banana</a>
												<span>(8)</span>
											</div>
										</li>
										<li>
											<div class="d-flex justify-content-between fruite-name">
												<a href="#"><i class="fas fa-apple-alt me-2"></i>Pumpkin</a>
												<span>(5)</span>
											</div>
										</li>
									</ul>
								</div>
							</div>

							<div class="col-lg-12">
								<div class="mb-3">
									<h4 class="mb-2">가격</h4>
									<input type="range" class="form-range w-100" id="rangeInput"
										name="rangeInput" min="0" max="500" value="0"
										oninput="amount.value=rangeInput.value">
									<output id="amount" name="amount" min-velue="0" max-value="500"
										for="rangeInput">0</output>
								</div>
							</div>
							<!-- 조회화면 -->
							${itemList }



							<div class="col-lg-12"></div>
						</div>
					</div>

					<div class="col-lg-9">
						<div class="row g-4 justify-content-center">
							<c:forEach items="${itemList }" var="item">
								<div class="col-md-6 col-lg-6 col-xl-4">
									<div class="rounded position-relative fruite-item">
										<div class="fruite-img">

											<img src="images/${item.itemImage }"

												class="img-fluid w-100 rounded-top" alt="" width="10px"
												height="10px">
										</div>
										<div
											class="text-white bg-secondary px-3 py-1 rounded position-absolute"
											style="top: 10px; left: 10px;">Fruits</div>

										<div
											class="p-4 border border-secondary border-top-0 rounded-bottom">
											<h4>${item.itemName }</h4>
											<p>${item.itemInfo }</p>
											<div class="d-flex justify-content-between flex-lg-wrap">
												<p class="text-dark fs-5 fw-bold mb-0">${item.itemPrice }</p>
												<a href="#"
													class="btn border border-secondary rounded-pill px-3 text-primary"><i
													class="fa fa-shopping-bag me-2 text-primary"></i> Add to
													cart</a>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
							

















							<!-- 	<div class="col-md-6 col-lg-6 col-xl-4">
								<div class="rounded position-relative fruite-item">
									<div class="fruite-img">
										<img src="img/fruite-item-1.jpg"
											class="img-fluid w-100 rounded-top" alt="">
									</div>
									<div
										class="text-white bg-secondary px-3 py-1 rounded position-absolute"
										style="top: 10px; left: 10px;">Fruits</div>
									<div
										class="p-4 border border-secondary border-top-0 rounded-bottom">
										<h4>Oranges</h4>
										<p>Lorem ipsum dolor sit amet consectetur adipisicing elit
											sed do eiusmod te incididunt</p>
										<div class="d-flex justify-content-between flex-lg-wrap">
											<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
											<a href="#"
												class="btn border border-secondary rounded-pill px-3 text-primary"><i
												class="fa fa-shopping-bag me-2 text-primary"></i> Add to
												cart</a>
										</div>
									</div>
								</div>
							</div> -->

							<div class="center">
								<div class="pagination">
									<c:if test="${page.prev }">
										<a
											href="boardList.do?page=${page.starPage - 1 }&searchCondition=${searchCondition }&keyword=${keyword }">
											&laquo; </a>
									</c:if>
									<c:forEach begin="${page.starPage }" end="${page.endPage }"
										var="p">
										<c:choose>
											<c:when test="${p eq page.page }">
												<a
													href="boardList.do?page=${p }&searchCondition=${searchCondition }&keyword=${keyword }"
													class="active">${p }</a>
											</c:when>
											<c:otherwise>
												<a
													href="boardList.do?page=${p }&searchCondition=${searchCondition }&keyword=${keyword }">${p }</a>
											</c:otherwise>
										</c:choose>
									</c:forEach>
									<c:if test="${page.next }">
										<a
											href="boardList.do?page=${page.endPage + 1 }&searchCondition=${searchCondition }&keyword=${keyword }">
											&raquo; </a>
									</c:if>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
</div>
<!-- Fruits Shop End-->
