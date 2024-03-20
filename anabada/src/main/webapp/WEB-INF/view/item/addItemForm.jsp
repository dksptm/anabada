<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

        <!-- Single Page Header start -->
        <div class="container-fluid page-header py-5">
            <h1 class="text-center text-white display-6">상품등록 (수정중)</h1>
            <ol class="breadcrumb justify-content-center mb-0">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item"><a href="#">Pages</a></li>
                <li class="breadcrumb-item active text-white">Checkout</li>
            </ol>
        </div>
        <!-- Single Page Header End -->

        <!-- Checkout Page Start -->
        <div class="container-fluid py-5">
            <div class="container py-5">
                <h1 class="row mb-4 justify-content-center">상품을 등록하세요.</h1>
                <form action="addItem.do" method="post" enctype="multipart/form-data" onsubmit="data_select()">
                	<input type="hidden" value="${member.memberNum }" name="mem_num">
                	<input type="hidden" value="판매중" name="status">
                	<input type="hidden" value="" name="d_select">
                	<input type="hidden" value="" name="o_select">
                    <div class="row g-5 justify-content-center">
                        <div class="col-md-12 col-lg-6 col-xl-7">
                            <div class="row justify-content-between">
                                <div class="col-md-12 col-lg-6">
                                    <div class="form-item w-100">
                                        <label class="form-label my-3" for="name">상품명<sup>*</sup></label>
                                        <input type="text" class="form-control" name="name" id="name">
                                    </div>
                                </div>
                                <div class="col-md-12 col-lg-6">
                                    <div class="form-item w-100">
                                        <label class="form-label my-3" for="cate">카테고리<sup>*</sup></label>
                        				<select class="form-select" name="cate" id="cate">
  											<option>선택하세요</option>
											<option value="t1">반팔</option>
											<option value="t2">긴팔</option>
										</select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-item">
                                <label class="form-label my-3" for="price">판매가격<sup>*</sup></label>
                                <input type="number" class="form-control" name="price" id="price" placeholder="￦">
                            </div>
                            <div class="form-item">
                                <label class="form-label my-3" for="info">상품설명<sup>*</sup></label><br>
                                <input type="file" class="btn btn-outline-info" name="img"><br><br>
                                <textarea name="info" class="form-control" spellcheck="false" cols="30" rows="11" placeholder="실제 촬영한 사진과 함께 상세한 설명을 해주세요."></textarea>
                            </div>
	                        <hr>
	                        <div class="form-item">
		                        <div class="form-check my-3">
	                                <input class="form-check-input bg-primary" type="checkbox" name="d_select" value="taek">
	                                <label class="form-check-label" for="taek">택배거래</label>
		                        </div>
	                        </div>
	                        <div class="form-item">
	                            <input class="form-check-input bg-primary" type="checkbox" name="d_select" value="jik">
	                        	<label class="form-check-label me-5" for="jik">직거래</label>
		                        <button type="button" id="jido" class="btn btn-outline-info btn-sm">장소추가</button>
	                        </div>
	                        <hr>
	                        <div class="form-item">
	                        	<table>
	                        		<tr class="align-items-center justify-content-between">
			                        	<th class="w-50">
			                                <input class="form-check-input bg-primary o_select" name="d_select" type="radio" value="negoOK">
			                                <label class="form-check-label" for="d_select">네고불가</label>
			                        	</th>
			                        	<th class="w-50">
				                            <input class="form-check-input bg-primary o_select" name="d_select" type="radio" value="negoNG">
				                        	<label class="form-check-label me-5" for="d_select">네고가능</label>		                        	
			                        	</th>
		                        	</tr>
	                        	</table>
	                        </div>
	                        <hr>
	                        <div class="form-item">
	                        	<label class="form-label my-3" for="account">계좌번호</label>
	                        	<select class="form-select" id="account">
									<option>나중에 데이터 가져와야함</option>
	  								<option>111-1111-1111</option>
	  								<option>222-2222-2222</option>
								</select>
	                        </div>
	                        <div class="d-flex text-center align-items-center justify-content-between pt-4">
	                        	<button type="submit" id="signBtn" class="btn border-secondary py-3 px-4 me-4 w-100 text-primary" style="background-color: #F2EFE5;">상품등록</button>
								<button type="reset" class="btn btn-outline-dark py-3 px-4 w-100 text-primary">나가기</button>
	                        </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- Checkout Page End -->