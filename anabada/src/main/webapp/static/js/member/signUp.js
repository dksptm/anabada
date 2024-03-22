/**
 * 
 */

console.log('signUp.js')

let idDupl = false;
let emptyChk = false;
	
$(document).ready(function(e){
	
	
	// 일단 버튼 비활성화.
	$('#signBtn').prop('disabled', true);
	
	// 비번체크.
	$("#member_pw").on('propertychange change keyup paste input blur', function(e){
		if($(this).val().length < 4 || $(this).val() == null){
			$(this).next().text("비밀번호는 4자리 이상입력.").addClass('warning');
		} else {
			$(this).next().text("").removeClass('warning');
			// 비번재확인
			if($(this).val() != $("#member_pw2").val()){
				$("#member_pw2").next().text("비밀번호 불일치.").addClass('warning');
			} else if ($(this).val() == $("#member_pw2").val()){
				$("#member_pw2").next().text("").removeClass('warning');
			}
		}
	})
	
	// 비번 재확인.
	$("#member_pw2").on('propertychange change keyup paste input blur', function(e){
		if($(this).val() != $("#member_pw").val()){
			$(this).next().text("비밀번호 불일치.").addClass('warning');
		} else if ($(this).val() == $("#member_pw").val()){
			$(this).next().text("").removeClass('warning');
		}
	})
	
	// 휴대폰 정규식확인. 
	$('#member_phone').on('blur change keyup', function(e){
		let phoneRule = /^(01[0-9]{1}-?[0-9]{4}-?[0-9]{4}|01[0-9]{8})$/;;
		let phone = $(this).val();
		if(!phoneRule.test(phone)){
			$(this).next().text("하이픈사용 휴대폰번호를 입력.").addClass('warning');
		} else {
			$(this).next().text("").removeClass('warning');
		}
	})
	
	// 아이디 중복체크.
	$('#idChk').on('click', idChkFnc);

	// 만약 아이디 중복검사후 변경하면.
	$('#member_id').on('change keyup blur', function(e){
		idDupl = false;
		$('#Account-1').prop('checked', false);
		$('#signBtn').prop('disabled', true);
	})
	
	// 공백체크.
	$('#Account-1').on('change', isEmpty);
	
	// 버튼활성화
	$('#Account-1').on('change', function(e){
		isEmpty();
		//console.log(emptyChk);
		$(this).prop('checked', false);
		$('#signBtn').prop('disabled', true);
		if(!emptyChk){
			alert('정보입력.');
		} else if (!idDupl) {
			alert('이메일 중복체크.');
		} else if ($('em').hasClass('warning')) {
			alert('정보 재확인.');
		} else {
			$(this).prop('checked', true);
			$('#signBtn').prop('disabled', false);
		}
	})
})

// 공백체크 함수.
function isEmpty(){
	let formInput = $('#sign input[type=text]');
	formInput.each((e, ele) => {
		if(ele.value == ''){
			$('#Account-1').prop('checked', false);
			$('#signBtn').prop('disabled', true);
			emptyChk = false;
			return;
		}
		emptyChk = true;
	})
}

// 아이디 중복체크 함수.
function idChkFnc(){
	let inputId = $('#member_id').val();
	if(!inputId){
		alert('이메일 입력.');
		return;
	}
	let emailRule = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
	if(!emailRule.test(inputId)){
		alert('이메일형식 아님.');
		return;
	}
	$.ajax({
		url: 'idchk.do?id=' + inputId,
		method: 'get',
		dataType: 'json'
	})
	.done(result => {
		if(result.retCode == 'OK'){
			idDupl = true;
			alert('중복검사 성공.');
		} else {
			alert('이미 있는 이메일.');
			$('#member_id').val('')
		}
	})
	.fail((err) => console.log(err));
}



