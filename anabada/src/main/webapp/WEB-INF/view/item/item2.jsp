
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
<div class="container-fluid py-5 mt-5">
	<div class="container py-5">
		<div class="row g-4 mb-5">
			<div class="col-lg-8 col-xl-9">
				<div class="row g-4">

					<div class="col-lg-6">
						<div class="border rounded">

							<a href="#"> <img src="static/img/리자몽 피규어.jpg"
								class="img-fluid rounded" alt="Image">
							</a>
						</div>
					</div>

					<div class="col-lg-6">

						<div>
							<div>
								<div class="flex items-center justify-between mb-1">
									<h1
										class="text-lg font-semibold leading-6 md:text-2xl md:leading-[28.64px] text-jnblack mr-2">리자몽
										피규어${itemName }</h1>
								</div>
								<div class="flex items-center mb-2 lg:mb-3">
									<div
										class="font-bold md:text-[32px] mr-2 text-[26px] leading-9 md:leading-[38.19px] text-heading">9,500원
										${itemPrice }</div>
								</div>
								<div
									class="flex items-center justify-between mb-4 text-xs font-normal">
									<span class="text-jnGray-500 leading-[15px]">1시간 전 · 조회
										1 · 찜 0</span>
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
									<span class="text-xs font-normal text-jnGray-600 break-keep">제품상태</span>
									<button disabled=""
										class="block text-sm font-semibold text-jnblack mt-1 ">중고</button>
								</li>
								<li
									class="flex flex-col flex-1 basis-[25%] px-3 sm:px-4 relative after:absolute [&amp;:not(:first-child)]:after:content-['']  after:bg-gray-300 after:h-[20px] [&amp;:not(:first-child)]:after:w-[1px] after:left-0 justify-center items-center">
									<span class="text-xs font-normal text-jnGray-600 break-keep">거래방식</span>
									<button disabled=""
										class="block text-sm font-semibold text-jnblack mt-1 ">직거래</button>
								</li>
								<li
									class="flex flex-col flex-1 basis-[25%] px-3 sm:px-4 relative after:absolute [&amp;:not(:first-child)]:after:content-['']  after:bg-gray-300 after:h-[20px] [&amp;:not(:first-child)]:after:w-[1px] after:left-0 justify-center items-center">
									<span class="text-xs font-normal text-jnGray-600 break-keep">배송비</span>
									<button disabled=""
										class="block text-sm font-semibold text-jnblack mt-1 ">-</button>
								</li>
								<li
									class="flex flex-col flex-1 basis-[25%] px-3 sm:px-4 relative after:absolute [&amp;:not(:first-child)]:after:content-['']  after:bg-gray-300 after:h-[20px] [&amp;:not(:first-child)]:after:w-[1px] after:left-0 justify-center items-center">
									<span class="text-xs font-normal text-jnGray-600 break-keep">안전거래</span>
									<button disabled=""
										class="block text-sm font-semibold text-jnblack mt-1 ">미사용</button>
								</li>
							</ul>

							<div
								class="flex items-center space-s-4 pt-4 max-[479px]:fixed max-[479px]:bottom-0 max-[479px]:left-0 max-[479px]:z-20 max-[479px]:w-full max-[479px]:px-4 max-[479px]:pb-4 max-[479px]:bg-white">
								<div class="w-8 h-8">
									<label for=":r0:" class="relative"> <svg width="32"
											height="32" viewBox="0 0 32 32" fill="none"
											xmlns="http://www.w3.org/2000/svg"
											class="pointer-events-none w-8 h-8">
						                <path
												d="M5.94197 17.9925L15.2564 26.334C15.3282 26.3983 15.3641 26.4305 15.3975 26.4557C15.7541 26.7249 16.2459 26.7249 16.6025 26.4557C16.6359 26.4305 16.6718 26.3983 16.7436 26.3341L26.058 17.9925C28.8244 15.5151 29.1565 11.3015 26.8124 8.42125L26.5675 8.12029C23.8495 4.78056 18.5906 5.35863 16.663 9.20902C16.3896 9.75505 15.6104 9.75505 15.337 9.20902C13.4094 5.35863 8.1505 4.78056 5.43249 8.12028L5.18755 8.42125C2.84352 11.3015 3.17564 15.5151 5.94197 17.9925Z"
												stroke-width="1.5" stroke="#9CA3AF">
						                </path>
						              </svg>
									</label> <input id=":r0:" type="checkbox" class="a11yHidden">
								</div>

								<button data-variant="slim"
									class="text-[13px] md:text-sm leading-4 inline-flex items-center cursor-pointer transition ease-in-out duration-300 font-semibold font-body text-center justify-center placeholder-white focus-visible:outline-none focus:outline-none rounded-md h-11 md:h-12 px-5 py-2 transform-none normal-case hover:shadow-cart ga4_product_detail_bottom w-full bg-white hover:bg-white/90 text-jnblack hover:text-jnblack border-[1px] border-jnblack">거래하기</button>
							</div>
						</div>
					</div>

					<!-- 상품정보 가게정보 -->
					<div
						class="block lg:flex lg:min-h-[591px] space-y-12 lg:space-y-0 mb-12">
						<div name="product-description"
							class="w-full lg:mr-[72px] lg:w-[680px] flex flex-col flex-auto false">
							<h3
								class="md:text-[22px] lg:pb-5 w-full border-b border-gray-300 basis-[48px] font-bold pb-3 text-jnblack text-lg">상품
								정보</h3>
							<div
								class="flex-1 basis-[465px] lg:basis-[475px] flex flex-col overflow-visible">
								<div class="h-auto flex flex-col">
									<article class="flex flex-col flex-1">
										<p
											class="flex-1 py-5 text-base font-normal break-words break-all whitespace-pre-line text-jnGray-900">※
											상품에 대한 내용 입력 란</p>
									</article>
								</div>
							</div>
							
						</div>
						<div class="basis-[420px]">
							<div name="product-store" class="w-full lg:w-[420px]">
								<a
									class="flex items-center justify-between w-full pb-3 border-b border-gray-300 lg:pb-5"
									href="/store/3416679"><h3
										class="md:text-[22px] font-bold text-jnBlack text-lg">가게
										정보</h3> <svg stroke="currentColor" fill="currentColor"
										stroke-width="0" viewBox="0 0 512 512" height="24" width="24"
										xmlns="http://www.w3.org/2000/svg">
										<path
											d="M294.1 256L167 129c-9.4-9.4-9.4-24.6 0-33.9s24.6-9.3 34 0L345 239c9.1 9.1 9.3 23.7.7 33.1L201.1 417c-4.7 4.7-10.9 7-17 7s-12.3-2.3-17-7c-9.4-9.4-9.4-24.6 0-33.9l127-127.1z"></path></svg></a>
								<div class="flex flex-col">
									<div>
										<div class="flex">
											<a
												class="flex items-center justify-between w-full pt-5 lg:pt-[28px] lg:pb-5"
												href="/store/3416679"><p
													class="text-[22px] font-semibold text-jnGray-900">오늘은쉽니다</p>
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
													신뢰지수<span class="ml-1 text-lg font-semibold">324</span>
												</p>
												<span class="text-sm text-jnGray-500">1,000</span>
											</div>
											<div class="w-full h-2 bg-[#F1F4F6] rounded overflow-hidden">
												<div class="h-full" style="width: 32.4%;">
													<div
														class="rounded bg-gradient-to-r from-[#0DCC5A] from-0% to-[#019FB1] to-107.5% w-full h-full animate-width"></div>
												</div>
											</div>
										</div>
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
		</div>
	</div>
</div>
