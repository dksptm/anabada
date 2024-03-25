<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">상품 리스트</h1>
	<ol class="breadcrumb justify-content-center mb-0">
		<li class="breadcrumb-item active text-white"></li>
	</ol>
</div>

<!-- 상품리스트 -->
<div class="container-fluid fruite py-5">
	<div class="container py-5">
		<h1 class="mb-4">anabada shop</h1>
		<div class="row g-4">
			<div class="col-lg-12">
				<div class="row g-4">
					<div class="col-xl-3">

						<!-- <form action="inameList.do" method="get"> -->
						<div class="input-group w-100 mx-auto d-flex">
							<input type=text class="form-control p-3" placeholder="상품명 검색"
								aria-describedby="search-icon-1" name="keyword" id="key">

							<!-- <input type="submit"  value="조회" class="input-group-text p-3"> -->
						</div>
						<!-- </form> -->
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


				<!-- 카테고리 + 상품리스트. -->
				<div class="row g-4">

					<!-- 카테고리 부분. -->
					<div class="col-lg-3">
						<div class="row g-4">
							<div class="col-lg-12">
								<div class="mb-3 btnbox">
									<h4>카테고리</h4>
									<!-- 라디오버튼 start. -->
									<ul class="list-unstyled fruite-categorie">
										<li>
											<div class="d-flex justify-content-between fruite-name">
												<input type="button" id="button" name="button" value="전체"
													class="btn" />
											</div>
										</li>
										<li>
											<div class="d-flex justify-content-between fruite-name">
												<input type="button" id="button1" name="button" value="상의"
													class="btn" />
											</div>
										</li>
										<li>
											<div class="d-flex justify-content-between fruite-name">
												<input type="button" id="button" name="button" value="하의"
													class="btn" />
											</div>
										</li>
										<li>
											<div class="d-flex justify-content-between fruite-name">
												<input type="button" id="button2" name="button" value="반팔"
													class="btn" />
											</div>
										</li>
										<li>
											<div class="d-flex justify-content-between fruite-name">
												<input type="button" id="button3" name="button" value="긴팔"
													class="btn" />
											</div>
										</li>
										<li>
											<div class="d-flex justify-content-between fruite-name">
												<input type="button" id="button4" name="button" value="반바지"
													class="btn" />
											</div>
										</li>
										<li>
											<div class="d-flex justify-content-between fruite-name">
												<input type="button" id="button4" name="button" value="청바지"
													class="btn" />
											</div>
										</li>
									</ul>
									<!-- 라디오버튼 end. -->
								</div>
							</div>
						</div>
					</div>

					<!-- 상품리스트(상품공간+페이지공간) -->
					<div class="col-lg-9">
						<!-- 상품공간 start. -->
						<div class="row g-4 justify-content-center" id="itemList">

							<!-- 상품반복 -->
							<c:forEach items="${itemList }" var="item">
								<div class="col-md-6 col-lg-6 col-xl-4 vesitable" id="getItem">
									<div
										class="border border-primary rounded position-relative vesitable-item"
										OnClick="location.href ='item.do?itemNum=${item.itemNum}'">
										<!-- 사진. -->
										<div class="vesitable-img">
											<img src="images/${item.itemImage }"
												class="img-fluid w-100 rounded-top bg-light"
												onerror="this.onerror=null; this.src='static/img/errimg.png';">
										</div>
										<!-- 사진상단 아이템번호. -->
										<div
											class="text-white bg-primary px-3 py-1 rounded position-absolute"
											style="top: 10px; right: 10px;" id="inum">
											${item.itemNum }</div>
										<!-- 아이템정보. -->
										<div class="p-4 rounded-bottom">
											<h4 style="height: 29px; overflow: hidden;">${item.itemName }</h4>
											<p style="height: 85px; overflow: hidden;" id="info">${item.itemInfo }</p>
											<div class="d-flex justify-content-between flex-lg-wrap">
												<div class="fs-5 mb-5">
													￦
													<fmt:formatNumber value="${item.itemPrice }"
														pattern="#,###" />
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
						<!-- 상품공간 end. -->
						<br>
						<br>
						<!-- 페이지공간 start. -->
						<div class="center">
							<div class="pagination">
								<c:if test="${page.prev }">
									<a
										href="itemList.do?page=${page.startPage - 1 }&radio=${radio }&keyword=${keyword }">
										&laquo; </a>
								</c:if>
								<c:forEach begin="${page.startPage }" end="${page.endPage }"
									var="p">
									<c:choose>
										<c:when test="${p eq page.page }">
											<a
												href="itemList.do?page=${p }&searchCondition=${searchCondition }&keyword=${keyword }"
												class="active">${p }</a>
										</c:when>
										<c:otherwise>
											<a
												href="itemList.do?page=${p }&searchCondition=${searchCondition }&keyword=${keyword }">${p }</a>
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
						<!-- 페이지공간 end. -->
					</div>
					<!-- 상품리스트(상품공간+페이지공간) end. -->
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	
</script>
<script src="static/js/item/itemList.js"></script>
