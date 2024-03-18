/**
 * 
 */

console.log('signUp.js')
 
let chk = true;
 
$(document).ready(function(e){
	
	// 일단 버튼 비활성화.
	$('#signBtn').prop('disabled', true);
	
	// 공백체크
	$("input").on('blur', emptyChk);
	
	// 비번체크
	$("#member_pw").on('blur', function(e){
		if($(this).val().length < 4){
			$(this).next().text("비밀번호는 4자리 이상입력.").addClass('warning');
			chk = false;
		}
	})
	
	// 비번재확인
	$("#member_pw2").on('blur', function(e){
		if($(this).val() == $("#member_pw").text()){
			$(this).next().text("비밀번호 불일치.").addClass('warning');
			chk = false;
		}
	})
	
	// 정규식확인. 
	$('#member_phone').on('blur', function(e){
		let phone = $(this).val();
		let phoneRule = /^(070|02|0[3-9]{1}[0-9]{1})[0-9]{3,4}[0-9]{4}$/;
		if(phoneRule.test(phone)){
			chk = false;
		}
	})
	
	let myId;
	// 아이디 중복체크.
	$('#idChk').on('click', function(e){
		let inputId = $('#member_id').val();
		console.log(inputId)
		if(!inputId){
			alert('이메일을 입력해주세요.');
			return;
		}
		let format = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
		if(!format.test(inputId)){
			alert('이메일을 형식이 아닙니다.');
			return;
		}
		$.ajax({
			url: 'idchk.do?id=' + inputId,
			method: 'get',
			dataType: 'json'
		})
		.done(result => {
			if(result.retCode == 'OK') {
				console.log(result);
				alert('성공');
				myId = inputId;
			} else {
				console.log(result)
				alert('실패')
				$('#member_id').val('');
			}
		})
		.fail(err => {console.log(err)}) 
		
	});
	
	// 버튼활성화
	$('#Account-1').on('click', function(e){
		if(!myId){
			alert('이메일 중복확인 필요.');
		}
		if(chk && myId){
			$('#signBtn').prop('disabled', false);
		} 
	})
	
})

function emptyChk(e){
	if(e.target.value == ''){
		$(this).next().text("필수입력값입니다.").addClass('warning');
		e.target.focus();
		chk = false;
	} else{
		$(this).next().text("");
	}
}

