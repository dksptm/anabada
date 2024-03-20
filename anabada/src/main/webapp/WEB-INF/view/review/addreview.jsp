<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
div {
	text-align: center;
}

#myform fieldset {
	display: inline-block;
	direction: rtl;
	border: 0;
}

#myform fieldset legend {
	text-align: right;
}

#myform input[type=radio] {
	display: none;
}

#myform label {
	font-size: 3em;
	color: transparent;
	text-shadow: 0 0 0 #f0f0f0;
}

#myform label:hover {
	text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}

#myform label:hover ~ label {
	text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}

#myform input[type=radio]:checked ~ label {
	text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}

#reviewContents {
	width: 100%;
	height: 150px;
	padding: 10px;
	box-sizing: border-box;
	border: solid 1.5px #D3D3D3;
	border-radius: 5px;
	font-size: 16px;
	resize: none;
}
</style>
<!-- Single Page Header start -->
<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">후기</h1>
	<ol class="breadcrumb justify-content-center mb-0">
		<li class="breadcrumb-item"><a href="#">Home</a></li>
		<li class="breadcrumb-item"><a href="#">Pages</a></li>
		<li class="breadcrumb-item active text-white">review</li>
	</ol>
</div>
<div class="my-review-write" id="reviewWrap">
	<!-- 상품 -->
	<div class="">
		<a href="http://localhost:8080/anabada/item.do" class="img-block">
			<img src="images/${item.itemImage }" alt="">
		</a>
		<ul class="info">
			<li class="brand"><a href="">${item.categoryName }</a></li>
			<li class="name"><a href="/app/goods/1551839">${item.itemName }</a></li>
			<li class="status">${item.itemStatus }</li>

		</ul>
	</div>
	<!-- //상품 -->


	<link href="/assets/css/star.css" rel="stylesheet" />

	<form class="mb-3" name="myform" id="myform" method="post">
		<fieldset>
			<span class="text-bold">별점을 선택해주세요</span> <input type="radio"
				name="reviewStar" value="5" id="rate1"><label for="rate1">★</label>
			<input type="radio" name="reviewStar" value="4" id="rate2"><label
				for="rate2">★</label> <input type="radio" name="reviewStar"
				value="3" id="rate3"><label for="rate3">★</label> <input
				type="radio" name="reviewStar" value="2" id="rate4"><label
				for="rate4">★</label> <input type="radio" name="reviewStar"
				value="1" id="rate5"><label for="rate5">★</label>
		</fieldset>

	</form>

	<!-- 구매만족도 -->
	<dl class="review-satisfaction-form">
		<dt class="review-satisfaction-form__title satisfactionTitle">member_name님과의
			거래경험은 어떠셨나요?</dt>
		<dd class="review-satisfaction-form__input">
			<div class="review-satisfaction-form__input__wrap">
				<input type="radio" class="review-satisfaction-form__radio"
					id="choice0_25" name="satisfactionAnswer[1456]" value="25"
					data-category="1456"> <label
					class="review-satisfaction-form__label" for="choice0_25">아쉬워요</label>
			</div>
			<div class="review-satisfaction-form__input__wrap">
				<input type="radio" class="review-satisfaction-form__radio"
					id="choice0_11" name="satisfactionAnswer[1456]" value="11"
					data-category="1456"> <label
					class="review-satisfaction-form__label" for="choice0_11">보통이에요</label>
			</div>
			<div class="review-satisfaction-form__input__wrap">
				<input type="radio" class="review-satisfaction-form__radio"
					id="choice0_20" name="satisfactionAnswer[1456]" value="20"
					data-category="1456"> <label
					class="review-satisfaction-form__label" for="choice0_20">최고예요</label>
			</div>
		</dd>
	</dl>
	<dl class="review-satisfaction-form">
		<dd class="review-satisfaction-form__input">
			<div class="review-satisfaction-form__input__wrap">
				<input type="checkbox" class="review-satisfaction-form__radio"
					id="choice1_10" name="satisfactionAnswer[1457]" value="10"
					data-category="1457"> <label
					class="review-satisfaction-form__label" for="choice1_10">
					친절/매너가 좋아요.</label>
			</div>
			<div class="review-satisfaction-form__input__wrap">
				<input type="checkbox" class="review-satisfaction-form__radio"
					id="choice1_11" name="satisfactionAnswer[1457]" value="11"
					data-category="1457"> <label
					class="review-satisfaction-form__label" for="choice1_11">
					응답이 빨라요.</label>
			</div>
			<div class="review-satisfaction-form__input__wrap">
				<input type="checkbox" class="review-satisfaction-form__radio"
					id="choice1_18" name="satisfactionAnswer[1457]" value="18"
					data-category="1457"> <label
					class="review-satisfaction-form__label" for="choice1_18">상품상태가
					좋아요</label>
			</div>
			<div class="review-satisfaction-form__input__wrap">
				<input type="checkbox" class="review-satisfaction-form__radio"
					id="choice1_18" name="satisfactionAnswer[1457]" value="18"
					data-category="1457"> <label
					class="review-satisfaction-form__label" for="choice1_18">거래시간을
					잘지켜요</label>
			</div>
		</dd>
	</dl>


	<!-- // 구매만족도 -->


	<!-- 후기 작성 -->

	<div class="review-write--v2">
		<div class="review-share">
			<h2>내용</h2>
		</div>
		<!-- 입력 영역 -->
		<div class="n-comment-input tab-wrap is-active">

			<div class="input-area">
				<!-- Text -->
				<div class="tab-block is-active" data-tab="text">
					<textarea id="goods_text"
						placeholder="다른 회원분에게 도움이 되는 나만의 팁을 소개해 주세요. (20자 이상 작성)"
						name="goods_text" style="width: 500px; height: 200px;"></textarea>
					<p class="info" id="text_size">0 자 / 20자 이상</p>
				</div>
			</div>
		</div>
		<!-- //입력 영역 -->
		<!-- 사진 첨부 -->

		<!-- //사진 첨부 -->
	</div>
	<!-- //후기 작성 -->


	<div class="n-btn-group">
		<form action="reviewList.do" method="post" id="addrievew">
			<button type="submit" class="addreviewBtn" id="btnSave">등록</button>
		</form>
	</div>
</div>


<script>
const rateWrap = document.querySelectorAll('.rating'),
label = document.querySelectorAll('.rating .rating__label'),
input = document.querySelectorAll('.rating .rating__input'),
labelLength = label.length,
opacityHover = '0.5';

let stars = document.querySelectorAll('.rating .star-icon');

checkedRate();


rateWrap.forEach(wrap => {
wrap.addEventListener('mouseenter', () => {
    stars = wrap.querySelectorAll('.star-icon');

    stars.forEach((starIcon, idx) => {
        starIcon.addEventListener('mouseenter', () => {
            if (wrap.classList.contains('readonly') == false) {
                initStars(); // 기선택된 별점 무시하고 초기화
                filledRate(idx, labelLength);  // hover target만큼 별점 active

                // hover 시 active된 별점의 opacity 조정
                for (let i = 0; i < stars.length; i++) {
                    if (stars[i].classList.contains('filled')) {
                        stars[i].style.opacity = opacityHover;
                    }
                }
            }
        });

        starIcon.addEventListener('mouseleave', () => {
            if (wrap.classList.contains('readonly') == false) {
                starIcon.style.opacity = '1';
                checkedRate(); // 체크된 라디오 버튼 만큼 별점 active
            }
        });

        // rate wrap을 벗어날 때 active된 별점의 opacity = 1
        wrap.addEventListener('mouseleave', () => {
            if (wrap.classList.contains('readonly') == false) {
                starIcon.style.opacity = '1';
            }
        });

        // readonnly 일 때 비활성화
        wrap.addEventListener('click', (e) => {
            if (wrap.classList.contains('readonly')) {
                e.preventDefault();
            }
        });
    });
});
});

//target보다 인덱스가 낮은 .star-icon에 .filled 추가 (별점 구현)
function filledRate(index, length) {
if (index <= length) {
    for (let i = 0; i <= index; i++) {
        stars[i].classList.add('filled');
    }
}
}

//선택된 라디오버튼 이하 인덱스는 별점 active
function checkedRate() {
let checkedRadio = document.querySelectorAll('.rating input[type="radio"]:checked');


initStars();
checkedRadio.forEach(radio => {
    let previousSiblings = prevAll(radio);

    for (let i = 0; i < previousSiblings.length; i++) {
        previousSiblings[i].querySelector('.star-icon').classList.add('filled');
    }

    radio.nextElementSibling.classList.add('filled');

    function prevAll() {
        let radioSiblings = [],
            prevSibling = radio.parentElement.previousElementSibling;

        while (prevSibling) {
            radioSiblings.push(prevSibling);
            prevSibling = prevSibling.previousElementSibling;
        }
        return radioSiblings;
    }
});
}

//별점 초기화 (0)
function initStars() {
for (let i = 0; i < stars.length; i++) {
    stars[i].classList.remove('filled');
}
}
</script>