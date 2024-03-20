<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link
	href="//cdn.datatables.net/2.0.2/css/dataTables.dataTables.min.css"
	rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="//cdn.datatables.net/2.0.2/js/dataTables.min.js"></script>
<style>
li {
	text-align: left
}
</style>
<body>
	<div class="container-fluid page-header py-5">
		<h1 class="text-center text-white display-6">제품 상세페이지</h1>
		<ol class="breadcrumb justify-content-center mb-0">
			<li class="breadcrumb-item"><a href="#">Home</a></li>
			<li class="breadcrumb-item"><a href="#">Pages</a></li>
			<li class="breadcrumb-item active text-white">item detail</li>
		</ol>
	</div>
	<!-- Product section-->
	<section class="py-5">
		<div class="container px-4 px-lg-5 my-5">
			<div class="row gx-4 gx-lg-5 align-items-center">
				<div class="col-md-6">
					<input type="hidden" value="${item.itemNum }" name="bno"> <img
						class="" src="images/${item.itemImage }" alt="..."
						style="float: right; height: 630px;" />
				</div>
				<div class="col-md-6">
					<div class="small mb-1">${item.categoryName }</div>
					<h1 class="display-5 fw-bolder">${item.itemName }</h1>
					<div class="fs-5 mb-5">
						<span class="text-decoration-line-through"></span>가격: <span><fmt:formatNumber
								value="${item.itemPrice }" pattern="#,###" />원 </span>
					</div>
					<ul
						class="box-border flex text-center border border-gray-300 rounded items-center py-6 mb-6">
						<li
							class="flex flex-col flex-1 basis-[25%] px-3 sm:px-4 relative after:absolute [&amp;:not(:first-child)]:after:content-['']  after:bg-gray-300 after:h-[20px] [&amp;:not(:first-child)]:after:w-[1px] after:left-0 justify-center items-center">
							<span class="text-xs font-normal text-jnGray-600 break-keep">제품상태:
								&emsp;</span> <a>${item.itemStatus }</a>
						</li>
						<li
							class="flex flex-col flex-1 basis-[25%] px-3 sm:px-4 relative after:absolute [&amp;:not(:first-child)]:after:content-['']  after:bg-gray-300 after:h-[20px] [&amp;:not(:first-child)]:after:w-[1px] after:left-0 justify-center items-center">
							<span class="text-xs font-normal text-jnGray-600 break-keep">거래방식:
								&emsp;</span> <span>직거래</span>

						</li>
						<li
							class="flex flex-col flex-1 basis-[25%] px-3 sm:px-4 relative after:absolute [&amp;:not(:first-child)]:after:content-['']  after:bg-gray-300 after:h-[20px] [&amp;:not(:first-child)]:after:w-[1px] after:left-0 justify-center items-center">
							<span class="text-xs font-normal text-jnGray-600 break-keep">배송비:&emsp;&emsp;&emsp;</span>
							<span>-</span>
						</li>
						<li
							class="flex flex-col flex-1 basis-[25%] px-3 sm:px-4 relative after:absolute [&amp;:not(:first-child)]:after:content-['']  after:bg-gray-300 after:h-[20px] [&amp;:not(:first-child)]:after:w-[1px] after:left-0 justify-center items-center">
							<span class="text-xs font-normal text-jnGray-600 break-keep">안전거래:
								&emsp;</span> <span>미사용</span>
						</li>
					</ul>
					<p class="lead">${item.itemInfo }</p>
					<div class="d-flex">
						<button class="btn btn-outline-dark flex-shrink-0" type="button"
							style="margin: 10px;" onclick="location.href='cartList.do'">
							<i class="bi-cart-fill me-1"></i> 장바구니 담기
						</button>
						<button class="btn btn-outline-dark flex-shrink-0" type="button"
							style="margin: 10px;" onclick="location.href='orderForm.do'">
							<i class=""></i> 바로 구매
						</button>
					</div>

					<!--가게정보  -->

				</div>
				<div class="durlek" style="float: right; width: auto; height: auto;">
					<div class="basis-[420px]">
						<div name="product-store" class="flex" style="width: auto;">

							<a
								class="flex items-center justify-between w-full pb-3 border-b border-gray-300 lg:pb-5"
								href="shopInfo.do">
								<h3 class="" style="width: 230px;">가게정보</h3>
								<h3 style="float: right;">></h3>
							</a>
							<hr style="width: 500px;">

						</div>

						<div class="row g-4">
							<div>
								<div class="flex">
									<a
										class="flex items-center justify-between w-full pt-5 lg:pt-[28px] lg:pb-5"
										href="/store/3416679"><p
											class="text-[22px] font-semibold text-jnGray-900">${item.memberId }</p>
										<div class="flex items-center translate-x-4">
											<img alt="프로파일"
												src="https://img2.joongna.com/common/Profile/Default/profile_m.png"
												width="60" height="60" decoding="async" data-nimg="1"
												class="rounded-full max-w-none h-[60px] box-content border-4 border-white -translate-x-4"
												loading="lazy" style="color: transparent;">
										</div></a>
								</div>

								<div>
									<div class="flex justify-between mt-2 text-[#0CB650]">
										<p class="text-base font-medium">
											평점:<span class="ml-1 text-lg font-semibold">${item.memberScore }</span>
										</p>
									</div>
									<div class="w-full h-2 bg-[#F1F4F6] rounded overflow-hidden">
										<div class="h-full" style="width: 32.4%;">
											<div
												class="rounded bg-gradient-to-r from-[#0DCC5A] from-0% to-[#019FB1] to-107.5% w-full h-full animate-width"></div>
										</div>
									</div>
								</div>
							</div>
						</div>


					</div>
				</div>
			</div>

		</div>

	</section>
	<!-- 가게정보  -->

	<!-- Related items section-->
	<section class="py-5 bg-light">
		<div class="container px-4 px-lg-5 mt-5">
			<h2 class="fw-bolder mb-4">Related products</h2>
			<div
				class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<img class="card-img-top"
							src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">Fancy Product</h5>
								<!-- Product price-->
								$40.00 - $80.00
							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="#">View
									options</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Sale badge-->
						<div class="badge bg-dark text-white position-absolute"
							style="top: 0.5rem; right: 0.5rem">Sale</div>
						<!-- Product image-->
						<img class="card-img-top"
							src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">Special Item</h5>
								<!-- Product reviews-->
								<div
									class="d-flex justify-content-center small text-warning mb-2">
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
								</div>
								<!-- Product price-->
								<span class="text-muted text-decoration-line-through">$20.00</span>
								$18.00
							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Sale badge-->
						<div class="badge bg-dark text-white position-absolute"
							style="top: 0.5rem; right: 0.5rem">Sale</div>
						<!-- Product image-->
						<img class="card-img-top"
							src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">Sale Item</h5>
								<!-- Product price-->
								<span class="text-muted text-decoration-line-through">$50.00</span>
								$25.00
							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<img class="card-img-top"
							src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">Popular Item</h5>
								<!-- Product reviews-->
								<div
									class="d-flex justify-content-center small text-warning mb-2">
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
								</div>
								<!-- Product price-->
								$40.00
							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Footer-->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2023</p>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>
