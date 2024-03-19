
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
div {
	text-align: center;
}
#myform fieldset{
    display: inline-block;
    direction: rtl;
    border:0;
}
#myform fieldset legend{
    text-align: right;
}
#myform input[type=radio]{
    display: none;
}
#myform label{
    font-size: 3em;
    color: transparent;
    text-shadow: 0 0 0 #f0f0f0;
}
#myform label:hover{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#myform label:hover ~ label{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#myform input[type=radio]:checked ~ label{
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
	<h1 class="text-center text-white display-6">��湲�</h1>
	<ol class="breadcrumb justify-content-center mb-0">
		<li class="breadcrumb-item"><a href="#">Home</a></li>
		<li class="breadcrumb-item"><a href="#">Pages</a></li>
		<li class="breadcrumb-item active text-white">review</li>
	</ol>
</div>
<div class="my-review-write" id="reviewWrap">
	<!-- ���� -->
	<div class="n-prd-row">
		<a href="http://localhost:8080/anabada/item.do" class="img-block"> <img
			src="images/${item.itemImage }" alt="">
		</a>
		<ul class="info">
			<li class="brand"><a href="">${item.categoryName }</a></li>
			<li class="name"><a href="/app/goods/1551839">${item.itemName }</a></li>
			<li class="status">${item.itemStatus }</li>

		</ul>
	</div>
	<!-- //���� -->

	<!-- 蹂��� -->
	<!-- <div class="review-score" id="reviewScorePos">
		<em class="label">蹂����� 留ㅺ꺼二쇱�몄��</em>
		<div class="n-score score-lg clickable goods_est_area"
			id="startScoreWrap">
			<a href="#" class="score score10" data-star="5"></a> <a href="#"
				class="score score8" data-star="4"></a> <a href="#"
				class="score score6" data-star="3"></a> <a href="#"
				class="score score4" data-star="2"></a> <a href="#"
				class="score score2" data-star="1"></a>
		</div>
	</div> -->
	<link href="/assets/css/star.css" rel="stylesheet"/>

 	<form class="mb-3" name="myform" id="myform" method="post">
	<fieldset>
		<span class="text-bold">蹂����� �����댁＜�몄��</span>
		<input type="radio" name="reviewStar" value="5" id="rate1"><label
			for="rate1">��</label>
		<input type="radio" name="reviewStar" value="4" id="rate2"><label
			for="rate2">��</label>
		<input type="radio" name="reviewStar" value="3" id="rate3"><label
			for="rate3">��</label>
		<input type="radio" name="reviewStar" value="2" id="rate4"><label
			for="rate4">��</label>
		<input type="radio" name="reviewStar" value="1" id="rate5"><label
			for="rate5">��</label>
	</fieldset>
	
</form>							
	
	<!-- 援щℓ留�議깅�� -->
	<dl class="review-satisfaction-form">
		<dt class="review-satisfaction-form__title satisfactionTitle">member_name��怨쇱��
			嫄곕��寃쏀���� �대���⑤����?</dt>
		<dd class="review-satisfaction-form__input">
			<div class="review-satisfaction-form__input__wrap">
				<input type="radio" class="review-satisfaction-form__radio"
					id="choice0_25" name="satisfactionAnswer[1456]" value="25"
					data-category="1456"> <label
					class="review-satisfaction-form__label" for="choice0_25">���ъ����</label>
			</div>
			<div class="review-satisfaction-form__input__wrap">
				<input type="radio" class="review-satisfaction-form__radio"
					id="choice0_11" name="satisfactionAnswer[1456]" value="11"
					data-category="1456"> <label
					class="review-satisfaction-form__label" for="choice0_11">蹂댄�듭�댁����</label>
			</div>
			<div class="review-satisfaction-form__input__wrap">
				<input type="radio" class="review-satisfaction-form__radio"
					id="choice0_20" name="satisfactionAnswer[1456]" value="20"
					data-category="1456"> <label
					class="review-satisfaction-form__label" for="choice0_20">理�怨�����</label>
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
					移���/留ㅻ��媛� 醫�����.</label>
			</div>
			<div class="review-satisfaction-form__input__wrap">
				<input type="checkbox" class="review-satisfaction-form__radio"
					id="choice1_11" name="satisfactionAnswer[1457]" value="11"
					data-category="1457"> <label
					class="review-satisfaction-form__label" for="choice1_11">
					���듭�� 鍮⑤�쇱��.</label>
			</div>
			<div class="review-satisfaction-form__input__wrap">
				<input type="checkbox" class="review-satisfaction-form__radio"
					id="choice1_18" name="satisfactionAnswer[1457]" value="18"
					data-category="1457"> <label
					class="review-satisfaction-form__label" for="choice1_18">��������媛�
					醫�����</label>
			</div>
			<div class="review-satisfaction-form__input__wrap">
				<input type="checkbox" class="review-satisfaction-form__radio"
					id="choice1_18" name="satisfactionAnswer[1457]" value="18"
					data-category="1457"> <label
					class="review-satisfaction-form__label" for="choice1_18">嫄곕����媛���
					��吏�耳���</label>
			</div>
		</dd>
	</dl>


	<!-- // 援щℓ留�議깅�� -->


	<!-- ��湲� ���� -->
	<div class="review-write--v2">
		<div class="review-share">
			<h2>�댁��</h2>
		</div>
		<!-- ���� ���� -->
		<div class="n-comment-input tab-wrap is-active">

			<div class="input-area">
				<!-- Text -->
				<div class="tab-block is-active" data-tab="text">
					<textarea id="goods_text"
						placeholder="�ㅻⅨ ����遺���寃� ������ ���� ��留��� ���� ��媛��� 二쇱�몄��. (20�� �댁�� ����)"
						name="goods_text" style="width: 500px; height: 200px;"></textarea>
					<p class="info" id="text_size">0 �� / 20�� �댁��</p>
				</div>
			</div>
		</div>
		<!-- //���� ���� -->
		<!-- �ъ� 泥⑤� -->

		<!-- //�ъ� 泥⑤� -->
	</div>
	<!-- //��湲� ���� -->


	<div class="n-btn-group">
		<button type="button" class="n-btn btn-accent" id="btnSave">�깅�</button>
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
                initStars(); // 湲곗������ 蹂��� 臾댁����怨� 珥�湲고��
                filledRate(idx, labelLength);  // hover target留��� 蹂��� active

                // hover �� active�� 蹂����� opacity 議곗��
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
                checkedRate(); // 泥댄�щ�� �쇰���� 踰��� 留��� 蹂��� active
            }
        });

        // rate wrap�� 踰��대�� �� active�� 蹂����� opacity = 1
        wrap.addEventListener('mouseleave', () => {
            if (wrap.classList.contains('readonly') == false) {
                starIcon.style.opacity = '1';
            }
        });

        // readonnly �� �� 鍮����깊��
        wrap.addEventListener('click', (e) => {
            if (wrap.classList.contains('readonly')) {
                e.preventDefault();
            }
        });
    });
});
});

//target蹂대�� �몃�깆�ㅺ� ���� .star-icon�� .filled 異�媛� (蹂��� 援ы��)
function filledRate(index, length) {
if (index <= length) {
    for (let i = 0; i <= index; i++) {
        stars[i].classList.add('filled');
    }
}
}

//������ �쇰���ㅻ��� �댄�� �몃�깆�ㅻ�� 蹂��� active
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

//蹂��� 珥�湲고�� (0)
function initStars() {
for (let i = 0; i < stars.length; i++) {
    stars[i].classList.remove('filled');
}
}
</script>
