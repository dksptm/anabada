/**
 * 
 */

console.log('modifyitem.js');

$(document).ready(function(){
	console.log(img);
	
	$('#slideinput').slideUp();
	$('.btnslide').on('click', function(){
		console.log("슬라이드 다운!")
		$('#slideinput').slideToggle();
	})
	
	if(mem == ''){
		alert('로그인 후 이용가능.');
		window.location.href='/anabada/loginForm.do';
	} else if (mem != seller){
		alert('권한없음.');
		window.location.href='/anabada/item.do?itemNum=' + ino;
	}
	
	// 카테고리 가져오기
	$.ajax({
		url: 'categoryList.do',
		method: 'get',
		dataType: 'json'
	})
	.done(result => {
		result.forEach(cate => {
			let opt = $('<option />').val(cate.categoryId).text('\u00A0'+cate.categoryName).addClass('');
			$('#myCate').append(opt);
			if(cate.level == 1){
				opt.attr('disabled', true).text(cate.categoryName).css('color', 'skyblue');
			}
		})
	})
	.fail(err => console.log(err))
	
});

function test1(){
	let imgFlag = $('#imgModify').val() == '' ? false : true;
	if(imgFlag) {
		$('input[name=imgFlag]').val('YES');
		$('input[name=firstImg]').val(img);
	} else {
		$('input[name=imgFlag]').val('NO');
	}
	console.log($('input[name=imgFlag]').val());
	console.log($('input[name=firstImg]').val());
}

function test2() {
	let imgFlag = $('#imgModify').val() == '' ? false : true;
	if(imgFlag) {
		$('input[name=imgFlag]').val('YES');
		$('input[name=firstImg]').val(img);
	} else {
		$('input[name=imgFlag]').val('NO');
	}
	alert(imgFlag);
	alert($('input[name=imgFlag]').val());
	let form = $('#modifyItem');
	form.submit();	
}

function modifyFnc(){
	// 사진을 수정할껀지 확인.
	let imgFlag = $('#imgModify').val() != '' ? true : false;
	if(imgFlag) {
		$('input[name=imgFlag]').val('YES');
		$('input[name=firstImg]').val(img);
	} else {
		$('input[name=imgFlag]').val('NO');
		$('input[name=firstImg]').val(img);
	}
	alert('사진수정여부? ' + imgFlag);
	alert('imgFlag? ' + $('input[name=imgFlag]').val());
	
	// 모두 입력됐는지 확인.
	let chkName = $('#name').val().trim() == '' ? false : true;
	let chkCate = $('#myCate').val() == '선택하세요' ? false : true;
	let chkPrice = $('#price').val().trim() == '' ? false : true;
	let chkInfo = $('textarea[name=info]').val().trim() == '' ? false : true;
	if(!chkName || !chkCate || !chkPrice || !chkInfo){
		alert('모든항목 입력.');
		return false;
	} else {
		alert('모든항목 입력완료.');
	}
	
	// 선택사항(거래방법과 네고가능여부) 체크됐는지 확인.	
	let taek = $('#taek').is(':checked') ? $('#taek').val() : null;
	let jik = $('#jik').is(':checked') ? $('#jik').val() : null;
	if(!taek && !jik){
		alert('거래방법 1개이상 선택.');
		return false;
	}
	if(taek && jik){
		$('input[name=dselect]').val('both');
	} else if (taek) {
		$('input[name=dselect]').val('taek');
	} else {
		$('input[name=dselect]').val('jik');
	}
	let pay = $('input:radio[name=pselect]:checked').val();
	if(!pay){
		alert('네고방법 선택.');
		return false;
	}
	$('input:hidden[name=pselect]').val(pay);
	
	// 제출하기.
	let form = $('#modifyItem');
	form.submit();		
}