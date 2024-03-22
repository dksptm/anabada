<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link
	href="//cdn.datatables.net/2.0.2/css/dataTables.dataTables.min.css"
	rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="//cdn.datatables.net/2.0.2/js/dataTables.min.js"></script>
<style>
.col-lg-6 {
	border-width: 2px;
	border-color: black;
}
</style>

<!-- Single Page Header start -->
<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">상세 페이지</h1>
	<ol class="breadcrumb justify-content-center mb-0">
		<li class="breadcrumb-item"><a href="#">Home</a></li>
		<li class="breadcrumb-item"><a href="#">Pages</a></li>
		<li class="breadcrumb-item active text-white">상세 페이지</li>
	</ol>
</div>
<!-- Single Page Header End -->

<!-- 상품내용, 가격, 이미지 -->
<!-- 위 여백 -->
<div class="container-fluid py-5 mt-5">
	<!-- 왼쪽 여백 -->
	<div class="container py-5">
		<!-- 오른쪽 여백 -->
		<!-- <div class="col-lg-8 col-xl-9"> -->
		<div class="row g-4">
			<!-- 반나눔 -->

			<div class="col-lg-6"
				style="border: 1px solid black; border-radius: 20px;">
				<!-- <div class="border rounded"> -->

				<a href="orderForm.do?oty='바로결제'&ino=${empty item.itemNum ? '108' : item.itemNum}&mno=${member.memberNum }"> <img src="images/${item.itemImage }" class="img"
					alt="Image"
					style="float: left; width: 500px; height: 470px; border-radius: 20px;">
				</a>
				<p>바로결제(네고는 페이지 따로예정)</p>
				<!-- </div> -->
			</div>

			<div class="col-lg-6"
				style="border: 1px solid black; border-radius: 20px;">

				<div>
					<div>
						<div class="flex items-center justify-between p-3">
							<h1 class="text-lg font-semibold leading-6 md:text-2xl md:leading-[28.64px] text-jnblack mr-2">
							상품명 ${item.itemName }</h1>
						</div>
						<div class="px-3" style="">
							<h4><b>${item.itemPrice }원</b></h4>
						</div>
						<div
							class="flex items-center justify-between mb-4 text-xs font-normal">
							<span class="text-jnGray-500 leading-[15px]">${item.itemDate },
								${item.zzim }</span>
						</div>
					</div>
					<div
						class="fixed left-0 z-20 w-full bg-white px-4 py-3 shadow-[0_35px_60px_-20px_rgba(0,0,0,0.3)] justify-between lg:hidden hidden top-[var(--header-height)] sm:top-[var(--sm-header-height)] lg:top-[var(--lg-header-height)] xl:top-[var(--xl-header-height)] top-[136px]">


						<!--거래사진  -->
						<div
							class="relative inline-block w-12 h-12 overflow-hidden rounded">
							<img alt="cgv 4dx 예매해드려요--0" referrerpolicy="no-referrer"
								src="static/img/리자몽 피규어.jpg" decoding="async" data-nimg="fill"
								class="object-cover" loading="lazy"
								style="position: absolute; height: 10%; width: 10%; inset: 0px; color: transparent;">
						</div>
					</div>

					<ul
						class="box-border flex text-center border border-gray-300 rounded items-center py-6 mb-6">
						<li
							class="flex flex-col flex-1 basis-[25%] px-3 sm:px-4 relative after:absolute [&amp;:not(:first-child)]:after:content-['']  after:bg-gray-300 after:h-[20px] [&amp;:not(:first-child)]:after:w-[1px] after:left-0 justify-center items-center">
							<span class="text-xs font-normal text-jnGray-600 break-keep">제품상태:</span>
							<a>중고</a>
						</li>
						<li
							class="flex flex-col flex-1 basis-[25%] px-3 sm:px-4 relative after:absolute [&amp;:not(:first-child)]:after:content-['']  after:bg-gray-300 after:h-[20px] [&amp;:not(:first-child)]:after:w-[1px] after:left-0 justify-center items-center">
							<span class="text-xs font-normal text-jnGray-600 break-keep">거래방식:</span>
							<span>직거래</span>

						</li>
						<li
							class="flex flex-col flex-1 basis-[25%] px-3 sm:px-4 relative after:absolute [&amp;:not(:first-child)]:after:content-['']  after:bg-gray-300 after:h-[20px] [&amp;:not(:first-child)]:after:w-[1px] after:left-0 justify-center items-center">
							<span class="text-xs font-normal text-jnGray-600 break-keep">배송비:</span>
							<span>-</span>
						</li>
						<li
							class="flex flex-col flex-1 basis-[25%] px-3 sm:px-4 relative after:absolute [&amp;:not(:first-child)]:after:content-['']  after:bg-gray-300 after:h-[20px] [&amp;:not(:first-child)]:after:w-[1px] after:left-0 justify-center items-center">
							<span class="text-xs font-normal text-jnGray-600 break-keep">안전거래:</span>
							<span>미사용</span>
						</li>
					</ul>

					<ul>
						<li class=""><div class="sm:mb-5 sm:flex block mb-4">
								<div class="flex items-center mr-5 min-w-[95px]">
									<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12"
										viewBox="0 0 12 12" fill="none">
										<rect x="4.5" y="4.5" width="3" height="3" fill="#141313"></rect></svg>
									<span class="text-xs text-jnGray-700 ml-[6px]">거래희망지역</span>
								</div>
								<div class="pt-1 pl-[18px] sm:p-0">
									<div>
										<div class="basis-[100%]">
											<div class="carouselWrapper relative">
												<div
													class="swiper swiper-initialized swiper-horizontal swiper-pointer-events swiper-backface-hidden"
													dir="ltr">
													<div class="swiper-wrapper">
														<div
															class="swiper-slide swiper-slider-search-price margin8 swiper-slide-active">
															<button
																class="inline-flex gap-1 text-xs text-jnblack items-center mr-3 underline underline-offset-[3px]">
																<svg width="10" height="10" viewBox="0 0 10 10"
																	fill="none" xmlns="http://www.w3.org/2000/svg" class="">
																	<g id="ico_location">
																	<g id="Group 7574">
																	<path id="Subtract" fill-rule="evenodd"
																		clip-rule="evenodd"
																		d="M0.500572 4.33686C0.461335 2.03812 2.44609 0.0664601 4.87009 0.00172047C7.41486 -0.0659179 9.5 1.86951 9.5 4.2668C9.5 5.53695 8.91145 6.67425 7.98201 7.45595L5.51062 9.79962C5.22883 10.0668 4.77124 10.0668 4.48945 9.79962L2.01755 7.45595C1.10543 6.68874 0.521464 5.57899 0.500572 4.33686ZM6.29884 3.7499C5.88477 3.03268 4.96724 2.7871 4.25008 3.2012C3.53291 3.61529 3.28683 4.53237 3.70141 5.2501C4.11548 5.96732 5.03249 6.2129 5.74966 5.7988C6.46734 5.38471 6.7129 4.46763 6.29884 3.7499Z"
																		fill="#787E89"></path></g></g></svg>
																하양읍
															</button>
														</div>
													</div>
													<div
														class="swiper-button-prev swiper-button-disabled swiper-button-lock"></div>
													<div
														class="swiper-button-next swiper-button-disabled swiper-button-lock"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div></li>
						<!-- 버튼 -->
						<div
							class="flex items-center space-s-4 pt-4 max-[479px]:fixed max-[479px]:bottom-0 max-[479px]:left-0 max-[479px]:z-20 max-[479px]:w-full max-[479px]:px-4 max-[479px]:pb-4 max-[479px]:bg-white">
							<div class="w-8 h-8">
								<label for=":r7e:" class="relative"><svg width="32"
										height="32" viewBox="0 0 32 32" fill="none"
										xmlns="http://www.w3.org/2000/svg"
										class="pointer-events-none w-8 h-8">
										<path
											d="M5.94197 17.9925L15.2564 26.334C15.3282 26.3983 15.3641 26.4305 15.3975 26.4557C15.7541 26.7249 16.2459 26.7249 16.6025 26.4557C16.6359 26.4305 16.6718 26.3983 16.7436 26.3341L26.058 17.9925C28.8244 15.5151 29.1565 11.3015 26.8124 8.42125L26.5675 8.12029C23.8495 4.78056 18.5906 5.35863 16.663 9.20902C16.3896 9.75505 15.6104 9.75505 15.337 9.20902C13.4094 5.35863 8.1505 4.78056 5.43249 8.12028L5.18755 8.42125C2.84352 11.3015 3.17564 15.5151 5.94197 17.9925Z"
											stroke-width="1.5" stroke="#9CA3AF"></path></svg></label><input id=":r7e:"
									type="checkbox" class="a11yHidden">
							</div>
							<button data-variant="slim"
								style="background-color: black; color: white;">
								바로구매</button>
						</div>

					</ul>



				</div>
			</div>
			<!--지도  -->


			<!-- 상품정보 가게정보 -->
			<!--  -->
			<div>
				<div class="1" style="float: left; width: auto; height: auto;">
					<div class="col-lg-6">
						<div
							class="block lg:flex lg:min-h-[591px] space-y-12 lg:space-y-0 mb-12">
							<div name="product-description"
								class="w-full lg:mr-[72px] lg:w-[680px] flex flex-col flex-auto false">
								<h3
									class="md:text-[22px] lg:pb-5 w-full border-b border-gray-300 basis-[48px] font-bold pb-3 text-jnblack text-lg"
									style="width: 500px;">상품정보</h3>
								<hr style="width: 500px;">

								<div
									class="flex-1 basis-[465px] lg:basis-[475px] flex flex-col overflow-visible">
									<div class="h-auto flex flex-col">
										<article class="flex flex-col flex-1">
											<p
												class="flex-1 py-5 text-base font-normal break-words break-all whitespace-pre-line text-jnGray-900">
												※${item.itemInfo }</p>
										</article>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>

				<div class="durlek" style="float: right; width: auto; height: auto;">
					<div class="basis-[420px]">
						<div name="product-store" class="flex" style="width: auto;">

							<a
								class="flex items-center justify-between w-full pb-3 border-b border-gray-300 lg:pb-5"
								href="/store/3416679">
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

								<div>
									<ul
										class="box-border flex text-center border border-gray-300 rounded items-center py-[18px] mt-5">
										<li
											class="flex flex-col flex-1 basis-[33%] px-3 sm:px-4 relative after:absolute [&amp;:not(:first-child)]:after:content-['']  after:bg-gray-300 after:h-[20px] [&amp;:not(:first-child)]:after:w-[1px] after:left-0 justify-center items-center"><span
											class="text-xs font-normal text-jnGray-600 break-keep">안전거래</span>
											<button disabled=""
												class="block text-sm font-semibold text-jnblack mt-1 ">0</button></li>
										<li
											class="flex flex-col flex-1 basis-[33%] px-3 sm:px-4 relative after:absolute [&amp;:not(:first-child)]:after:content-['']  after:bg-gray-300 after:h-[20px] [&amp;:not(:first-child)]:after:w-[1px] after:left-0 justify-center items-center"><span
											class="text-xs font-normal text-jnGray-600 break-keep">거래후기</span>
											<button
												class="block text-sm font-semibold text-jnblack mt-1 underline underline-offset-[3px]">0</button></li>
										<li
											class="flex flex-col flex-1 basis-[33%] px-3 sm:px-4 relative after:absolute [&amp;:not(:first-child)]:after:content-['']  after:bg-gray-300 after:h-[20px] [&amp;:not(:first-child)]:after:w-[1px] after:left-0 justify-center items-center"><span
											class="text-xs font-normal text-jnGray-600 break-keep">단골</span>
											<button disabled=""
												class="block text-sm font-semibold text-jnblack mt-1 ">0</button></li>
									</ul>

								</div>
							</div>
						</div>


					</div>
				</div>
			</div>
		</div>
		<!-- row 4 -->
	</div>