/**
 * 
 */

console.log('signUp.js')
 
let chk; 
 
$(document).ready(function(e){
	
	// 일단 버튼 비활성화.
	$('#signBtn').prop('disabled', true);
	
	// 공백체크
	$("input").not('input#Account-1').on('blur', emptyChk);
	
	// 비번체크
	$("#member_pw").on('propertychange change keyup paste input blur', function(e){
		if($(this).val().length < 4){
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
	
	// 정규식확인. 
	$('#member_phone').on('blur', function(e){
		let phone = $(this).val();
		let phoneRule = /^(01[0-9]{1}-?[0-9]{4}-?[0-9]{4}|01[0-9]{8})$/;;
		if(!phoneRule.test(phone)){
			$(this).next().text("하이픈사용 휴대폰번호를 입력.").addClass('warning');
		} else {
			$(this).next().text("").removeClass('warning');
		}
	})
	
	// 아이디 중복체크.
	let chkid = false;
	let myId; 
	let inputId;
	$('#member_id').on('change keyup blur', function(e){
		inputId = $('#member_id').val();
		$('#Account-1').prop('checked', false);
		$('#signBtn').prop('disabled', true);
	})
	$('#idChk').on('click', function(e){
		inputId = $('#member_id').val();
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
				alert('중복검사 성공. 이 아이디로 설정.');
				chkid = true;
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
	$('#Account-1').on('change', function(e){
		if(!$("input").not('input#Account-1').not('input#member_id').val()){
			alert('정보입력.');
			$(this).prop('checked', false);
			return;
		}
		if(this.checked){
			if($('em').hasClass('warning') == false){
				if(chkid && myId == inputId){
					$('#signBtn').prop('disabled', false);
				} else {
					alert('중복체크 해야함.');
					$(this).prop('checked', false);
				}
			} else {
				console.log($('em').hasClass('warning'))
				console.log($('em'));
				alert('다시 확인.');
				$(this).prop('checked', false);
			}
		}
	})
	
})

function emptyChk(e){
	if(e.target.value == ''){
		$(this).next().text("필수입력값입니다.").addClass('warning');
	} else{
		$(this).next().text("").removeClass('warning');
		chk = true;
	}
}

