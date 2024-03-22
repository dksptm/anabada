<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">상품상세 페이지</h1>
	<ol class="breadcrumb justify-content-center mb-0">
		<li class="breadcrumb-item"><a href="#">Home</a></li>
		<li class="breadcrumb-item"><a href="#">Pages</a></li>
		<li class="breadcrumb-item active text-white">Product detail page</li>
	</ol>
</div>
<!-- Modal Search Start -->

<!-- Modal Search End -->

<!-- Fruits Shop Start-->
<div class="container-fluid fruite py-5">
	<div class="container py-5">
		<h1 class="mb-4">avabada shop</h1>
		<div class="row g-4">
			<div class="col-lg-12">
				<div class="row g-4">
					<div class="col-xl-3">
						<form action="inameList.do" method="get">
							<div class="input-group w-100 mx-auto d-flex">
								<input type="text" class="form-control p-3"
									placeholder="keywords" aria-describedby="search-icon-1" name ="keyword" id="key">
							
									<input type="submit"  value="조회" class="input-group-text p-3">
							</div>
						</form>
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
								<div class="mb-3 btnbox">
									<h4>카테고리</h4>
									<ul class="list-unstyled fruite-categorie">
										<li>
											<div class="d-flex justify-content-between fruite-name">
												<input type="button" id="button" name="button" value="전체"
													class="btn" />
												<input type="radio" id="button" name="radio" value=""
													class="btn" />전체
											</div>
										</li>
										<li>
											<div class="d-flex justify-content-between fruite-name">
												<input type="button" id="button" name="button" value="하의"
													class="btn" />
												<input type="radio" id="button" name="radio" value="하의"
													class="btn" />하의
											</div>
										</li>
										<li>
											<div class="d-flex justify-content-between fruite-name">
												<input type="button" id="button1" name="button" value="상의"
													class="btn" />
												<input type="radio" id="button1" name="radio" value="상의"
													class="btn" />상의
											</div>
										</li>
										<li>
											<div class="d-flex justify-content-between fruite-name">
												<input type="button" id="button2" name="button" value="반팔"
													class="btn" />
												<input type="radio" id="button2" name="radio" value="반팔"
													class="btn" />반팔
											</div>
										</li>
										<li>
											<div class="d-flex justify-content-between fruite-name">
												<input type="button" id="button3" name="button" value="긴팔"
													class="btn" />
												<input type="radio" id="button3" name="radio" value="긴팔"
													class="btn" />긴팔
											</div>
										</li>
										<li>
											<div class="d-flex justify-content-between fruite-name">
												<input type="button" id="button4" name="button" value="청바지"
													class="btn" />
												<input type="radio" id="button4" name="radio" value="청바지"
													class="btn" />청바지
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



							<div class="col-lg-12"></div>
						</div>
					</div>

					<div class="col-lg-9">
						<div class="row g-4 justify-content-center" id="itemList">
							<c:forEach items="${itemList }" var="item">
								<div class="col-md-6 col-lg-6 col-xl-4 " id="itemRemove">
									<a href="item.do?itemNum=${item.itemNum}">
										<div class="rounded position-relative fruite-item">

											<div class="fruite-img">

												<img src="images/${item.itemImage }"
													class="img-fluid w-100 rounded-top" alt="" width="10px"
													height="10px">
											</div>
											<div
												class="text-white bg-secondary px-3 py-1 rounded position-absolute"
												style="top: 10px; left: 10px;">${item.itemNum }</div>

											<div
												class="p-4 border border-secondary border-top-0 rounded-bottom">
												<h4>${item.itemName }</h4>
												<p>${item.itemInfo }</p>
												<div class="" style="">
													<p class=""
														style="font-size: 10; font-weight: bold; float: right; widht: 250px; height: 250; text-align: right;">
														<fmt:formatNumber value="${item.itemPrice }" />
														원
													</p>

												</div>
											</div>
										</div>
									</a>
								</div>
							</c:forEach>
						</div>

${page.prev }
						<div class="center">
							<div class="pagination">
								<c:if test="${page.prev }">
									<a
										href="itemList.do?page=${page.starPage - 1 }&radio=${radio }&keyword=${keyword }">
										&laquo; </a>
								</c:if>
								<c:forEach begin="${page.starPage }" end="${page.endPage }"
									var="p">
									<c:choose>
										<c:when test="${p eq page.page }">
											<a
												href="itemList.do?page=${p }&radio=${radio }&keyword=${keyword }"
												class="active">${p }</a>
										</c:when>
										<c:otherwise>
											<a
												href="itemList.do?page=${p }&radio=${radio }&keyword=${keyword }">${p }</a>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								<c:if test="${page.next }">
									<a
										href="itemList.do?page=${page.endPage + 1 }&radio=${radio }&keyword=${keyword }">
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

<script src="static/js/item/itemList.js"></script>

<!-- Fruits Shop End-->
