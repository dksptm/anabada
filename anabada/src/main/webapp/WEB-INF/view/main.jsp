<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Hero Start -->
<div class="container-fluid py-5 mb-5 hero-header">
	<div class="container py-5">
		<div class="row g-5 align-items-center">
			<div class="col-md-12 col-lg-7">
				<h4 class="mb-3 text-secondary">Welcome to Anavada</h4>
				<h1 class="mb-5 display-3 text-primary">어떤 상품을 찾으시나요?</h1>
				<div class="position-relative mx-auto">
					<input
						class="form-control border-2 border-secondary w-75 py-3 px-4 rounded-pill"
						type="number" placeholder="Search">
					<button type="submit"
						class="btn btn-primary border-2 border-secondary py-3 px-4 position-absolute rounded-pill text-white h-100"
						style="top: 0; right: 25%;">Search Now</button>
				</div>
			</div>
			<div class="col-md-12 col-lg-5">
				<div id="carouselId" class="carousel slide position-relative"
					data-bs-ride="carousel">
					<div class="carousel-inner" role="listbox">
						<div class="carousel-item active rounded">
							<img src="static/img/main1.png"
								class="img-fluid w-100 h-100 bg-secondary rounded"
								alt="First slide"> <a href="#"
								class="btn px-4 py-2 text-white rounded">Fruites</a>
						</div>
						<div class="carousel-item rounded">
							<img src="static/img/main2.png"
								class="img-fluid w-100 h-100 rounded" alt="Second slide">
							<a href="#" class="btn px-4 py-2 text-white rounded">Vesitables</a>
						</div>
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselId" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselId" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Hero End -->

<!-- Fruits Shop Start-->
<div class="container-fluid fruite py-5">
	<div class="container py-5">
		<div class="tab-class text-center">
			<div class="row g-4">
				<div class="col-lg-4 text-start">
					<h1>실시간 인기상품</h1>
				</div>
				<div class="col-lg-8 text-end">
					<ul class="nav nav-pills d-inline-flex text-center mb-5">
						<li class="nav-item"><a
							class="d-flex m-2 py-2 bg-light rounded-pill active"
							data-bs-toggle="pill" href="#tab-1"> <span class="text-dark"
								style="width: 130px;">All Products</span>
						</a></li>
						<li class="nav-item"><a
							class="d-flex py-2 m-2 bg-light rounded-pill"
							data-bs-toggle="pill" href="#tab-2"> <span class="text-dark"
								style="width: 130px;">Vegetables</span>
						</a></li>
						<li class="nav-item"><a
							class="d-flex m-2 py-2 bg-light rounded-pill"
							data-bs-toggle="pill" href="#tab-3"> <span class="text-dark"
								style="width: 130px;">Fruits</span>
						</a></li>
						<li class="nav-item"><a
							class="d-flex m-2 py-2 bg-light rounded-pill"
							data-bs-toggle="pill" href="#tab-4"> <span class="text-dark"
								style="width: 130px;">Bread</span>
						</a></li>
						<li class="nav-item"><a
							class="d-flex m-2 py-2 bg-light rounded-pill"
							data-bs-toggle="pill" href="#tab-5"> <span class="text-dark"
								style="width: 130px;">Meat</span>
						</a></li>
					</ul>
				</div>
			</div>
			<div class="tab-content">
				<div id="tab-1" class="tab-pane fade show p-0 active">
					<div class="row g-4">
						<div class="col-lg-12">
							<div class="row g-4">
								<div class="col-md-6 col-lg-4 col-xl-3">
									<div class="rounded position-relative fruite-item">
										<div class="fruite-img">
											<img src="static/img/fruite-item-5.jpg"
												class="img-fluid w-100 rounded-top" alt="">
										</div>
										<div
											class="text-white bg-secondary px-3 py-1 rounded position-absolute"
											style="top: 10px; left: 10px;">Fruits</div>
										<div
											class="p-4 border border-secondary border-top-0 rounded-bottom">
											<h4>Grapes</h4>
											<p>Lorem ipsum dolor sit amet consectetur adipisicing
												elit sed do eiusmod te incididunt</p>
											<div class="d-flex justify-content-between flex-lg-wrap">
												<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
												<a href="#"
													class="btn border border-secondary rounded-pill px-3 text-primary"><i
													class="fa fa-shopping-bag me-2 text-primary"></i> Add to
													cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-lg-4 col-xl-3">
									<div class="rounded position-relative fruite-item">
										<div class="fruite-img">
											<img src="static/img/fruite-item-5.jpg"
												class="img-fluid w-100 rounded-top" alt="">
										</div>
										<div
											class="text-white bg-secondary px-3 py-1 rounded position-absolute"
											style="top: 10px; left: 10px;">Fruits</div>
										<div
											class="p-4 border border-secondary border-top-0 rounded-bottom">
											<h4>Grapes</h4>
											<p>Lorem ipsum dolor sit amet consectetur adipisicing
												elit sed do eiusmod te incididunt</p>
											<div class="d-flex justify-content-between flex-lg-wrap">
												<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
												<a href="#"
													class="btn border border-secondary rounded-pill px-3 text-primary"><i
													class="fa fa-shopping-bag me-2 text-primary"></i> Add to
													cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-lg-4 col-xl-3">
									<div class="rounded position-relative fruite-item">
										<div class="fruite-img">
											<img src="static/img/fruite-item-2.jpg"
												class="img-fluid w-100 rounded-top" alt="">
										</div>
										<div
											class="text-white bg-secondary px-3 py-1 rounded position-absolute"
											style="top: 10px; left: 10px;">Fruits</div>
										<div
											class="p-4 border border-secondary border-top-0 rounded-bottom">
											<h4>Raspberries</h4>
											<p>Lorem ipsum dolor sit amet consectetur adipisicing
												elit sed do eiusmod te incididunt</p>
											<div class="d-flex justify-content-between flex-lg-wrap">
												<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
												<a href="#"
													class="btn border border-secondary rounded-pill px-3 text-primary"><i
													class="fa fa-shopping-bag me-2 text-primary"></i> Add to
													cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-lg-4 col-xl-3">
									<div class="rounded position-relative fruite-item">
										<div class="fruite-img">
											<img src="static/img/fruite-item-4.jpg"
												class="img-fluid w-100 rounded-top" alt="">
										</div>
										<div
											class="text-white bg-secondary px-3 py-1 rounded position-absolute"
											style="top: 10px; left: 10px;">Fruits</div>
										<div
											class="p-4 border border-secondary border-top-0 rounded-bottom">
											<h4>Apricots</h4>
											<p>Lorem ipsum dolor sit amet consectetur adipisicing
												elit sed do eiusmod te incididunt</p>
											<div class="d-flex justify-content-between flex-lg-wrap">
												<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
												<a href="#"
													class="btn border border-secondary rounded-pill px-3 text-primary"><i
													class="fa fa-shopping-bag me-2 text-primary"></i> Add to
													cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-lg-4 col-xl-3">
									<div class="rounded position-relative fruite-item">
										<div class="fruite-img">
											<img src="static/img/fruite-item-3.jpg"
												class="img-fluid w-100 rounded-top" alt="">
										</div>
										<div
											class="text-white bg-secondary px-3 py-1 rounded position-absolute"
											style="top: 10px; left: 10px;">Fruits</div>
										<div
											class="p-4 border border-secondary border-top-0 rounded-bottom">
											<h4>Banana</h4>
											<p>Lorem ipsum dolor sit amet consectetur adipisicing
												elit sed do eiusmod te incididunt</p>
											<div class="d-flex justify-content-between flex-lg-wrap">
												<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
												<a href="#"
													class="btn border border-secondary rounded-pill px-3 text-primary"><i
													class="fa fa-shopping-bag me-2 text-primary"></i> Add to
													cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-lg-4 col-xl-3">
									<div class="rounded position-relative fruite-item">
										<div class="fruite-img">
											<img src="static/img/fruite-item-1.jpg"
												class="img-fluid w-100 rounded-top" alt="">
										</div>
										<div
											class="text-white bg-secondary px-3 py-1 rounded position-absolute"
											style="top: 10px; left: 10px;">Fruits</div>
										<div
											class="p-4 border border-secondary border-top-0 rounded-bottom">
											<h4>Oranges</h4>
											<p>Lorem ipsum dolor sit amet consectetur adipisicing
												elit sed do eiusmod te incididunt</p>
											<div class="d-flex justify-content-between flex-lg-wrap">
												<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
												<a href="#"
													class="btn border border-secondary rounded-pill px-3 text-primary"><i
													class="fa fa-shopping-bag me-2 text-primary"></i> Add to
													cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-lg-4 col-xl-3">
									<div class="rounded position-relative fruite-item">
										<div class="fruite-img">
											<img src="static/img/fruite-item-2.jpg"
												class="img-fluid w-100 rounded-top" alt="">
										</div>
										<div
											class="text-white bg-secondary px-3 py-1 rounded position-absolute"
											style="top: 10px; left: 10px;">Fruits</div>
										<div
											class="p-4 border border-secondary border-top-0 rounded-bottom">
											<h4>Raspberries</h4>
											<p>Lorem ipsum dolor sit amet consectetur adipisicing
												elit sed do eiusmod te incididunt</p>
											<div class="d-flex justify-content-between flex-lg-wrap">
												<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
												<a href="#"
													class="btn border border-secondary rounded-pill px-3 text-primary"><i
													class="fa fa-shopping-bag me-2 text-primary"></i> Add to
													cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-lg-4 col-xl-3">
									<div class="rounded position-relative fruite-item">
										<div class="fruite-img">
											<img src="static/img/fruite-item-5.jpg"
												class="img-fluid w-100 rounded-top" alt="">
										</div>
										<div
											class="text-white bg-secondary px-3 py-1 rounded position-absolute"
											style="top: 10px; left: 10px;">Fruits</div>
										<div
											class="p-4 border border-secondary border-top-0 rounded-bottom">
											<h4>Grapes</h4>
											<p>Lorem ipsum dolor sit amet consectetur adipisicing
												elit sed do eiusmod te incididunt</p>
											<div class="d-flex justify-content-between flex-lg-wrap">
												<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
												<a href="#"
													class="btn border border-secondary rounded-pill px-3 text-primary"><i
													class="fa fa-shopping-bag me-2 text-primary"></i> Add to
													cart</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div id="tab-2" class="tab-pane fade show p-0">
					<div class="row g-4">
						<div class="col-lg-12">
							<div class="row g-4">
								<div class="col-md-6 col-lg-4 col-xl-3">
									<div class="rounded position-relative fruite-item">
										<div class="fruite-img">
											<img src="static/img/fruite-item-5.jpg"
												class="img-fluid w-100 rounded-top" alt="">
										</div>
										<div
											class="text-white bg-secondary px-3 py-1 rounded position-absolute"
											style="top: 10px; left: 10px;">Fruits</div>
										<div
											class="p-4 border border-secondary border-top-0 rounded-bottom">
											<h4>Grapes</h4>
											<p>Lorem ipsum dolor sit amet consectetur adipisicing
												elit sed do eiusmod te incididunt</p>
											<div class="d-flex justify-content-between flex-lg-wrap">
												<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
												<a href="#"
													class="btn border border-secondary rounded-pill px-3 text-primary"><i
													class="fa fa-shopping-bag me-2 text-primary"></i> Add to
													cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-lg-4 col-xl-3">
									<div class="rounded position-relative fruite-item">
										<div class="fruite-img">
											<img src="static/img/fruite-item-2.jpg"
												class="img-fluid w-100 rounded-top" alt="">
										</div>
										<div
											class="text-white bg-secondary px-3 py-1 rounded position-absolute"
											style="top: 10px; left: 10px;">Fruits</div>
										<div
											class="p-4 border border-secondary border-top-0 rounded-bottom">
											<h4>Raspberries</h4>
											<p>Lorem ipsum dolor sit amet consectetur adipisicing
												elit sed do eiusmod te incididunt</p>
											<div class="d-flex justify-content-between flex-lg-wrap">
												<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
												<a href="#"
													class="btn border border-secondary rounded-pill px-3 text-primary"><i
													class="fa fa-shopping-bag me-2 text-primary"></i> Add to
													cart</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div id="tab-3" class="tab-pane fade show p-0">
					<div class="row g-4">
						<div class="col-lg-12">
							<div class="row g-4">
								<div class="col-md-6 col-lg-4 col-xl-3">
									<div class="rounded position-relative fruite-item">
										<div class="fruite-img">
											<img src="static/img/fruite-item-1.jpg"
												class="img-fluid w-100 rounded-top" alt="">
										</div>
										<div
											class="text-white bg-secondary px-3 py-1 rounded position-absolute"
											style="top: 10px; left: 10px;">Fruits</div>
										<div
											class="p-4 border border-secondary border-top-0 rounded-bottom">
											<h4>Oranges</h4>
											<p>Lorem ipsum dolor sit amet consectetur adipisicing
												elit sed do eiusmod te incididunt</p>
											<div class="d-flex justify-content-between flex-lg-wrap">
												<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
												<a href="#"
													class="btn border border-secondary rounded-pill px-3 text-primary"><i
													class="fa fa-shopping-bag me-2 text-primary"></i> Add to
													cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-lg-4 col-xl-3">
									<div class="rounded position-relative fruite-item">
										<div class="fruite-img">
											<img src="static/img/fruite-item-6.jpg"
												class="img-fluid w-100 rounded-top" alt="">
										</div>
										<div
											class="text-white bg-secondary px-3 py-1 rounded position-absolute"
											style="top: 10px; left: 10px;">Fruits</div>
										<div
											class="p-4 border border-secondary border-top-0 rounded-bottom">
											<h4>Apple</h4>
											<p>Lorem ipsum dolor sit amet consectetur adipisicing
												elit sed do eiusmod te incididunt</p>
											<div class="d-flex justify-content-between flex-lg-wrap">
												<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
												<a href="#"
													class="btn border border-secondary rounded-pill px-3 text-primary"><i
													class="fa fa-shopping-bag me-2 text-primary"></i> Add to
													cart</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div id="tab-4" class="tab-pane fade show p-0">
					<div class="row g-4">
						<div class="col-lg-12">
							<div class="row g-4">
								<div class="col-md-6 col-lg-4 col-xl-3">
									<div class="rounded position-relative fruite-item">
										<div class="fruite-img">
											<img src="static/img/fruite-item-5.jpg"
												class="img-fluid w-100 rounded-top" alt="">
										</div>
										<div
											class="text-white bg-secondary px-3 py-1 rounded position-absolute"
											style="top: 10px; left: 10px;">Fruits</div>
										<div
											class="p-4 border border-secondary border-top-0 rounded-bottom">
											<h4>Grapes</h4>
											<p>Lorem ipsum dolor sit amet consectetur adipisicing
												elit sed do eiusmod te incididunt</p>
											<div class="d-flex justify-content-between flex-lg-wrap">
												<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
												<a href="#"
													class="btn border border-secondary rounded-pill px-3 text-primary"><i
													class="fa fa-shopping-bag me-2 text-primary"></i> Add to
													cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-lg-4 col-xl-3">
									<div class="rounded position-relative fruite-item">
										<div class="fruite-img">
											<img src="static/img/fruite-item-4.jpg"
												class="img-fluid w-100 rounded-top" alt="">
										</div>
										<div
											class="text-white bg-secondary px-3 py-1 rounded position-absolute"
											style="top: 10px; left: 10px;">Fruits</div>
										<div
											class="p-4 border border-secondary border-top-0 rounded-bottom">
											<h4>Apricots</h4>
											<p>Lorem ipsum dolor sit amet consectetur adipisicing
												elit sed do eiusmod te incididunt</p>
											<div class="d-flex justify-content-between flex-lg-wrap">
												<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
												<a href="#"
													class="btn border border-secondary rounded-pill px-3 text-primary"><i
													class="fa fa-shopping-bag me-2 text-primary"></i> Add to
													cart</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div id="tab-5" class="tab-pane fade show p-0">
					<div class="row g-4">
						<div class="col-lg-12">
							<div class="row g-4">
								<div class="col-md-6 col-lg-4 col-xl-3">
									<div class="rounded position-relative fruite-item">
										<div class="fruite-img">
											<img src="static/img/fruite-item-3.jpg"
												class="img-fluid w-100 rounded-top" alt="">
										</div>
										<div
											class="text-white bg-secondary px-3 py-1 rounded position-absolute"
											style="top: 10px; left: 10px;">Fruits</div>
										<div
											class="p-4 border border-secondary border-top-0 rounded-bottom">
											<h4>Banana</h4>
											<p>Lorem ipsum dolor sit amet consectetur adipisicing
												elit sed do eiusmod te incididunt</p>
											<div class="d-flex justify-content-between flex-lg-wrap">
												<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
												<a href="#"
													class="btn border border-secondary rounded-pill px-3 text-primary"><i
													class="fa fa-shopping-bag me-2 text-primary"></i> Add to
													cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-lg-4 col-xl-3">
									<div class="rounded position-relative fruite-item">
										<div class="fruite-img">
											<img src="static/img/fruite-item-2.jpg"
												class="img-fluid w-100 rounded-top" alt="">
										</div>
										<div
											class="text-white bg-secondary px-3 py-1 rounded position-absolute"
											style="top: 10px; left: 10px;">Fruits</div>
										<div
											class="p-4 border border-secondary border-top-0 rounded-bottom">
											<h4>Raspberries</h4>
											<p>Lorem ipsum dolor sit amet consectetur adipisicing
												elit sed do eiusmod te incididunt</p>
											<div class="d-flex justify-content-between flex-lg-wrap">
												<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
												<a href="#"
													class="btn border border-secondary rounded-pill px-3 text-primary"><i
													class="fa fa-shopping-bag me-2 text-primary"></i> Add to
													cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-lg-4 col-xl-3">
									<div class="rounded position-relative fruite-item">
										<div class="fruite-img">
											<img src="static/img/fruite-item-1.jpg"
												class="img-fluid w-100 rounded-top" alt="">
										</div>
										<div
											class="text-white bg-secondary px-3 py-1 rounded position-absolute"
											style="top: 10px; left: 10px;">Fruits</div>
										<div
											class="p-4 border border-secondary border-top-0 rounded-bottom">
											<h4>Oranges</h4>
											<p>Lorem ipsum dolor sit amet consectetur adipisicing
												elit sed do eiusmod te incididunt</p>
											<div class="d-flex justify-content-between flex-lg-wrap">
												<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
												<a href="#"
													class="btn border border-secondary rounded-pill px-3 text-primary"><i
													class="fa fa-shopping-bag me-2 text-primary"></i> Add to
													cart</a>
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
</div>
<!-- Fruits Shop End-->

<!-- Vesitable Shop Start-->
<div class="container-fluid vesitable py-5">
	<div class="container py-5">
		<h1 class="mb-0">최근 등록된 상품</h1>
		<div class="owl-carousel vegetable-carousel justify-content-center">
			<div
				class="border border-primary rounded position-relative vesitable-item">
				<div class="vesitable-img">
					<img src="static/img/vegetable-item-6.jpg"
						class="img-fluid w-100 rounded-top" alt="">
				</div>
				<div
					class="text-white bg-primary px-3 py-1 rounded position-absolute"
					style="top: 10px; right: 10px;">Vegetable</div>
				<div class="p-4 rounded-bottom">
					<h4>Parsely</h4>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed
						do eiusmod te incididunt</p>
					<div class="d-flex justify-content-between flex-lg-wrap">
						<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
						<a href="#"
							class="btn border border-secondary rounded-pill px-3 text-primary"><i
							class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
					</div>
				</div>
			</div>
			<div
				class="border border-primary rounded position-relative vesitable-item">
				<div class="vesitable-img">
					<img src="static/img/vegetable-item-1.jpg"
						class="img-fluid w-100 rounded-top" alt="">
				</div>
				<div
					class="text-white bg-primary px-3 py-1 rounded position-absolute"
					style="top: 10px; right: 10px;">Vegetable</div>
				<div class="p-4 rounded-bottom">
					<h4>Parsely</h4>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed
						do eiusmod te incididunt</p>
					<div class="d-flex justify-content-between flex-lg-wrap">
						<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
						<a href="#"
							class="btn border border-secondary rounded-pill px-3 text-primary"><i
							class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
					</div>
				</div>
			</div>
			<div
				class="border border-primary rounded position-relative vesitable-item">
				<div class="vesitable-img">
					<img src="static/img/vegetable-item-3.png"
						class="img-fluid w-100 rounded-top bg-light" alt="">
				</div>
				<div
					class="text-white bg-primary px-3 py-1 rounded position-absolute"
					style="top: 10px; right: 10px;">Vegetable</div>
				<div class="p-4 rounded-bottom">
					<h4>Banana</h4>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed
						do eiusmod te incididunt</p>
					<div class="d-flex justify-content-between flex-lg-wrap">
						<p class="text-dark fs-5 fw-bold mb-0">$7.99 / kg</p>
						<a href="#"
							class="btn border border-secondary rounded-pill px-3 text-primary"><i
							class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
					</div>
				</div>
			</div>
			<div
				class="border border-primary rounded position-relative vesitable-item">
				<div class="vesitable-img">
					<img src="static/img/vegetable-item-4.jpg"
						class="img-fluid w-100 rounded-top" alt="">
				</div>
				<div
					class="text-white bg-primary px-3 py-1 rounded position-absolute"
					style="top: 10px; right: 10px;">Vegetable</div>
				<div class="p-4 rounded-bottom">
					<h4>Bell Papper</h4>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed
						do eiusmod te incididunt</p>
					<div class="d-flex justify-content-between flex-lg-wrap">
						<p class="text-dark fs-5 fw-bold mb-0">$7.99 / kg</p>
						<a href="#"
							class="btn border border-secondary rounded-pill px-3 text-primary"><i
							class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
					</div>
				</div>
			</div>
			<div
				class="border border-primary rounded position-relative vesitable-item">
				<div class="vesitable-img">
					<img src="static/img/vegetable-item-5.jpg"
						class="img-fluid w-100 rounded-top" alt="">
				</div>
				<div
					class="text-white bg-primary px-3 py-1 rounded position-absolute"
					style="top: 10px; right: 10px;">Vegetable</div>
				<div class="p-4 rounded-bottom">
					<h4>Potatoes</h4>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed
						do eiusmod te incididunt</p>
					<div class="d-flex justify-content-between flex-lg-wrap">
						<p class="text-dark fs-5 fw-bold mb-0">$7.99 / kg</p>
						<a href="#"
							class="btn border border-secondary rounded-pill px-3 text-primary"><i
							class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
					</div>
				</div>
			</div>
			<div
				class="border border-primary rounded position-relative vesitable-item">
				<div class="vesitable-img">
					<img src="static/img/vegetable-item-6.jpg"
						class="img-fluid w-100 rounded-top" alt="">
				</div>
				<div
					class="text-white bg-primary px-3 py-1 rounded position-absolute"
					style="top: 10px; right: 10px;">Vegetable</div>
				<div class="p-4 rounded-bottom">
					<h4>Parsely</h4>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed
						do eiusmod te incididunt</p>
					<div class="d-flex justify-content-between flex-lg-wrap">
						<p class="text-dark fs-5 fw-bold mb-0">$7.99 / kg</p>
						<a href="#"
							class="btn border border-secondary rounded-pill px-3 text-primary"><i
							class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
					</div>
				</div>
			</div>
			<div
				class="border border-primary rounded position-relative vesitable-item">
				<div class="vesitable-img">
					<img src="static/img/vegetable-item-5.jpg"
						class="img-fluid w-100 rounded-top" alt="">
				</div>
				<div
					class="text-white bg-primary px-3 py-1 rounded position-absolute"
					style="top: 10px; right: 10px;">Vegetable</div>
				<div class="p-4 rounded-bottom">
					<h4>Potatoes</h4>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed
						do eiusmod te incididunt</p>
					<div class="d-flex justify-content-between flex-lg-wrap">
						<p class="text-dark fs-5 fw-bold mb-0">$7.99 / kg</p>
						<a href="#"
							class="btn border border-secondary rounded-pill px-3 text-primary"><i
							class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
					</div>
				</div>
			</div>
			<div
				class="border border-primary rounded position-relative vesitable-item">
				<div class="vesitable-img">
					<img src="static/img/vegetable-item-6.jpg"
						class="img-fluid w-100 rounded-top" alt="">
				</div>
				<div
					class="text-white bg-primary px-3 py-1 rounded position-absolute"
					style="top: 10px; right: 10px;">Vegetable</div>
				<div class="p-4 rounded-bottom">
					<h4>Parsely</h4>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed
						do eiusmod te incididunt</p>
					<div class="d-flex justify-content-between flex-lg-wrap">
						<p class="text-dark fs-5 fw-bold mb-0">$7.99 / kg</p>
						<a href="#"
							class="btn border border-secondary rounded-pill px-3 text-primary"><i
							class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Vesitable Shop End -->