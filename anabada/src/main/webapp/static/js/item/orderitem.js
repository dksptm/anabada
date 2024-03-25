/**
 * 
 */

console.log('orderitem.js');

let ptype = 'err';

$(document).ready(function(){
	
	// 일단 안보이게.
	$('#jusot').slideUp();	
	$('#jusoj').slideUp();
	$('#btnB').slideUp();	
	
	// 배송지/직거래 슬라이드.
	$('#jusoOpen').on('click', 'button', function(e){
		if($(this).text().trim() == '택배거래'){
			$('#jusoj input').text('');
			$('#jusoj').slideUp();
			$('#jusot').slideToggle();
			$('#btnB').slideUp();
		} else if ($(this).text().trim() == '직거래') {
			$('#jusot input').text('');
			$('#jusot').slideUp();
			$('#jusoj').slideToggle();
			$('#btnB').slideUp();	
		}
	})
	
	// 주문하기 버튼 보이게.
	$('.btnA').on('click', 'label', function(e){
		if($('#jjuso').val() != '' || $('#tjuso').val() != '') {
			$('#btnB').slideDown();
			ptype = $(this).attr('for');
		} else {
			alert('주소입력!')
		}
	})
	
});

function orderBtn() {
	let str;
	if(ptype == 'payj'){
		str = '거래방법: 직거래, 결제방법: 기타결제 OK?'
	} else if(ptype == 'payt'){
		str = '거래방법: 택배발송, 결제방법: 기타결제 OK?'
	} else if(ptype == 'depositj'){
		str = '거래방법: 직거래, 결제방법: 무통장입금 OK?'
	} else if(ptype == 'depositt'){
		str = '거래방법: 택배발송, 결제방법: 무통장입금 OK?'
	}
	if(confirm(str)){
		alert('주문진행');
		let oty = '바로결제'; //고정.
		let dhow = ptype == 'payj' || ptype == 'depositj' ? '직거래' : '택배발송';
		let dfee = dhow == '택배발송' ? 3000 : 0;
		let daddr = dhow == '택배발송' ? $('#tjuso').val() : '' ;
		let pty = ptype == 'payj' || ptype == 'payt' ? '기타결제' : '계좌입금';
		$.ajax({
			url: 'addOrder.do',
			method: 'post',
			data: { ino, mno, oty, dhow, dfee, daddr, pty },
			dataType: 'json'
		})
		.done((result) => {
			if(result.retCode == 'OK'){
				alert('주문성공!');
				window.location.href='/anabada/orderComplete.do?odrNo=' + result.odrNo;
			} else {
				alert('주문실패!');
				window.location.href='/anabada/main.do';
			}
		})
		.fail((err) => console.log(err))
	} else {
		alert('취소');
		window.location.href='/anabada/item.do?itemNum='+ino;
	}
}

