<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <!-- Single Page Header start -->
        <div class="container-fluid page-header py-5">
            <h1 class="text-center text-white display-6">상품상세</h1>
            <ol class="breadcrumb justify-content-center mb-0">
                <li class="breadcrumb-item"><a href="#">item.do</a></li>
            </ol>
        </div>
        <!-- Single Page Header End -->
        
        <!-- Product section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center d-flex justify-content-between">
                    <div class="col-md-4">
                    	<img class="img-border-radius img-fluid rounded" src="images/${item.itemImage }" 
                    		style="width:100%;higth:100%;object-fit:contain;"
                    		onerror="this.onerror=null; this.src='static/img/errimg.png';" /></div>
                    <div class="col-md-6">
                        <div class="small mb-1">${item.itemNum }</div>
                        <h1 class="display-5 fw-bolder">${item.itemName }</h1>
                        <div class="fs-5 mb-5">
                            <span>￦ ${item.itemPrice }</span>
                        </div>
                        <div class="fs-5 mb-5">
	                        <p class="lead">${item.itemInfo }</p>
                        </div>
                        <table class="table table-borderless text-center fs-5 mb-5" style="background-color:#eee;">
                        	<tr>
                        		<th>판매상태</th><th>거래방법</th><th>판매자</th>
                        	</tr>
                        	<tr>
	                        	<td>${item.itemStatus }</td>
	                        	<td><c:out value="${item.dselect == 'both' ? '택배/직거래': item.dselect == 'taek' ? '택배' : '직거래'}" /></td>
	                        	<td><c:out value="${item.memberName }" /></td>
                        	</tr>
                        </table>
                        
                        <!-- 하단버튼: 로그인/판매자/판매중아닐때/판매중일때 다 다르게 나오도록. -->
                        <c:choose>
                        <c:when test="${empty member }">
                        	<span>구매하려면 로그인하세요.</span>
                        	<button onclick ="location.href='loginForm.do'" class="btn btn-outline-dark me-auto col-3" type="button">
		                        로그인
			                </button>
                        </c:when>
                        
                        <c:when test="${member.memberNum eq item.memberNum }">
                        <div class="d-flex fs-5 mb-5 justify-content-between" id="btnS">
				            <button class="btn btn-outline-dark col-3" type="button" onclick="modifyForm()">
			                수정하기 
				            </button>
	                        <div class="dropdown dropstart">
	                        	<button type="button" class="btn btn-outline-danger dropdown-toggle" data-bs-toggle="dropdown">
			                    <span>판매상태변경</span>
				                </button>
				                <ul class="dropdown-menu">
				                	<li class="dis"><a href="changeItem.do?sts=ing&ino=${item.itemNum }" class="dropdown-item">판매중</a></li>
				                	<li class="dis"><a href="changeItem.do?sts=hold&ino=${item.itemNum }" class="dropdown-item">예약중</a></li>
				                	<li><a href="changeItem.do?sts=cancel&ino=${item.itemNum }" class="dropdown-item">판매취소</a></li>
				                	<li><a href="changeItem.do?sts=complete&ino=${item.itemNum }" class="dropdown-item">판매완료</a></li>
				                </ul>
	                        </div>
			            </div>
                        </c:when>
                        
                        <c:when test="${item.itemStatus != '판매중' }">
                        	<span>현재 ${item.itemStatus }인 상품입니다.</span>
                        </c:when>
                        
                        <c:otherwise>
                        <div class="d-flex fs-5 mb-5" id="btnC">
	                    	<button type="button" onclick="toggleFrame('negoForm.do?itemNum=${item.itemNum}');" 
	                    			class="btn btn-outline-dark me-auto col-3"
	                    			${item.pselect eq 'negoNG' ? 'disabled' : '' }>
        							<i class="bi-cart-fill me-1"></i>
       				 				네고하기 
   							</button>
			            	<button onclick ="location.href='orderForm.do?ino=${item.itemNum }&oty=baro'" 
				            		class="btn btn-outline-dark me-auto col-3" 
				            		type="button">
				                    <i class="bi-cart-fill me-1"></i>
		        		            바로결제
			            	</button>
		                	<button class="btn btn-outline-dark col-3" type="button"  onclick="addZzim(${item.itemNum })">
		                		<i class="fas fa-heart"></i>
		                    	찜하기
		               		</button>
                        </div>
                        </c:otherwise>
                        </c:choose>
                        <!-- 하단버튼 end. -->
                    </div>
                </div>
            </div>
        </section>

<iframe name="contentFrame" id="contentFrame" style="width:100%; height:600px; border:none; display:none; position:fixed; left:0; top:0;"></iframe>
<script>


function addZzim(ino) {
	console.log('아이템!', ino);
		$.ajax({
			url: 'addCart.do',
			type: 'post',
			data: { ino : ino, mno : mno },
			dataType: 'json'
		})
		.done((result) => {
      	console.log(result);
     	 alert('찜하기성공!')
      })
      .fail((error) => {
    	 console.log(error)
    	 alert('찜하기실패!');
      })
}

	let istatus = "${item.itemStatus}";
	if(istatus == '판매완료' || istatus == '판매취소') {
		$('.dis').remove();
	}
	
	const mno = "${member.memberNum }";
	const ino = "${item.itemNum }";
	const seller = "${item.memberNum }"
	console.log('멤버:', mno, ' 아이템:', ino, ' 셀러:', seller);
	
	function addZzim(ino) {
		console.log('아이템!', ino);
			$.ajax({
				url: 'addCart.do',
				type: 'post',
				data: { ino : ino, mno : mno },
				dataType: 'json'
			})
			.done((result) => {
	      	console.log(result);
	      })
	      .fail((error) => console.error(err)) 
		}
	
	function toggleFrame(url) {
	    var iframe = document.getElementById('contentFrame');
	    // 'iframe'의 현재 상태 및 URL 체크
	    if (iframe.style.display === 'block' && iframe.src.includes(url)) {
	        // 이미 'iframe'이 표시중이며, 같은 URL을 로드하려는 경우 'iframe' 숨김
	        iframe.style.display = 'none';
	        iframe.src = '';
	    } else {
	        // 'iframe'을 표시하고, 주어진 URL 로드
	        iframe.style.display = 'block';
	        iframe.src = url;
	        // 'iframe'의 위치 조정
	        iframe.style.left = '0px'; // 화면의 왼쪽에 위치
	        iframe.style.top = '80px'; // 화면 상단에서 적당한 여백을 둠
	        iframe.style.width = '30%'; // iframe의 너비 조정
	        iframe.style.height = '100%'; // 화면 높이에 맞게 조정
	    }
	}
	
	// 페이지 로드 시 'iframe'을 숨김
	window.onload = function() {
	    document.getElementById('contentFrame').style.display = 'none';
	}

</script>
<script src="static/js/item/item.js"></script> 
<!-- <script src="static/js/item/addZzim.js"></script> -->
