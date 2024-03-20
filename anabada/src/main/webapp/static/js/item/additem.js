/**
 * addItemForm.jsp -> additem.js 
 */

console.log('additem.js');

$(document).ready(function(){
	console.log(mem);
	if(mem == ''){
		alert('로그인 후 이용가능.');
		window.location.href='/anabada/loginForm.do';
	}
	if(memAcc == ''){
		alert('계좌번호 등록 후 이용가능.');
		window.location.href='/anabada/myPage.do?mno='+mem;
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
	.fail(err => {console.log(err)})
	
});

function selectFnc(){
	let chkName = $('#name').val().trim() == '' ? false : true;
	let chkCate = $('#myCate').val() == '선택하세요' ? false : true;
	let chkPrice = $('#price').val().trim() == '' ? false : true;
	let chkImg = $('#img').val().trim() == '' ? false : true;
	let chkInfo = $('textarea[name=info]').val().trim() == '' ? false : true;
	console.log(chkCate);
	console.log($('#myCate').val());
	if(!chkName || !chkCate || !chkPrice || !chkImg || !chkInfo){
		alert('모든항목 입력.');
		return false;
	}
	
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
	//console.log($('input[name=d_select]').val())
	//console.log($('input:hidden[name=p_select]').val())
	//console.log($('#a').val());
	//console.log($('#b').val());
	let form = $('#addItem');
	form.submit();	
}