<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

        <!-- Single Page Header start -->
        <div class="container-fluid page-header py-5">
            <h1 class="text-center text-white display-6"><c:out value="${ino }" />번 상품수정</h1>
        </div>
        <!-- Single Page Header End -->

        <!-- Checkout Page Start -->
        <div class="container-fluid py-5">
        
            <div class="container py-5">
                <h1 class="row mb-4 justify-content-center">상품수정 하세요.</h1>
                <form action="modifyItem.do" method="post" enctype="multipart/form-data" id="modifyItem">
                	<input type="hidden" value="${ino }" name="ino">
                	<input type="hidden" value="" name="dselect">
                	<input type="hidden" value="" name="pselect">
                	<input type="hidden" value="" name="imgFlag">
                	<input type="hidden" value="" name="firstImg">
                    <div class="row g-5 justify-content-center">
                        <div class="col-md-12 col-lg-6 col-xl-7">
                            <div class="row justify-content-between">
                                <div class="col-md-12 col-lg-6">
                                    <div class="form-item w-100">
                                        <label class="form-label my-3" for="name">상품명<sup>*</sup></label>
                                        <input type="text" class="form-control" name="name" id="name" value="${item.itemName }">
                                    </div>
                                </div>
                                <div class="col-md-12 col-lg-6">
                                    <div class="form-item w-100">
                                        <label class="form-label my-3" for="myCate">카테고리<sup>*</sup></label>
                        				<select class="form-select" name="myCate" id="myCate"> 
  											<option>선택하세요</option>
										</select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-item">
                                <label class="form-label my-3" for="price">판매가격<sup>*</sup></label>
                                <input type="number" class="form-control" name="price" id="price" value="${item.itemPrice }">
                            </div>
                            <div class="form-item">
                                <label class="form-label my-3" for="info">상품설명<sup>*</sup></label><br>
                                <img src="images/${item.itemImage }" alt="itemimg" style="width:100px;higth:100px;object-fit:contain;">
                                <button type="button" class="btn btn-outline-info btnslide">사진수정</button>
                                <div id="slideinput">
                                	<input type="file" class="btn btn-outline-info" name="imgModify" id="imgModify">
                                </div>
                                <br><br>
                                <textarea name="info" class="form-control" spellcheck="false" cols="30" rows="11">${item.itemInfo }</textarea>
                            </div>
	                        <hr>
	                        <div class="form-item">
		                        <div class="form-check my-3">
	                                <input class="form-check-input bg-primary" type="checkbox" id="taek" value="taek">
	                                <label class="form-check-label" for="taek">택배거래</label>
		                        </div>
	                        </div>
	                        <div class="form-item">
	                            <input class="form-check-input bg-primary" type="checkbox" id="jik" value="jik">
	                        	<label class="form-check-label me-5" for="jik">직거래</label>
		                        <button type="button" id="jido" class="btn btn-outline-info btn-sm">장소추가</button>
	                        </div>
	                        <hr>
	                        <div class="form-item">
	                        	<table>
	                        		<tr class="align-items-center justify-content-between">
			                        	<th class="w-50">
			                                <input class="form-check-input bg-primary" name="pselect" type="radio" value="negoOK">
			                                <label class="form-check-label" for="pselect">네고가능</label>
			                        	</th>
			                        	<th class="w-50">
				                            <input class="form-check-input bg-primary" name="pselect" type="radio" value="negoNG">
				                        	<label class="form-check-label me-5" for="pselect">네고불가</label>		                        	
			                        	</th>
		                        	</tr>
	                        	</table>
	                        </div>
	                        <hr>
	                        <div class="d-flex text-center align-items-center justify-content-between pt-4">
	                        	<button type="button" onclick="modifyFnc()" class="btn border-secondary py-3 px-4 me-4 w-100 text-primary" style="background-color: #F2EFE5;">상품수정</button>
								<button type="button" onclick="cancelFnc()" class="btn btn-outline-dark py-3 px-4 w-100 text-primary">취소</button>
	                        </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- Checkout Page End -->
		
        <script>
         const mem = "${member.memberNum }";
         const seller = "${seller }";
         const ino = "${ino }";
         const img = "${item.itemImage }";
        </script>
        <script src="static/js/item/modifyitem.js"></script>