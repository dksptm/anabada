/**
 *  myInfo.jsp -> modifyinfo.js 
 */

let mno = '${member.memberNum }';
console.log('여기서?',mno);

function accUpdate() {
	let inputAcc = prompt("수정할 계좌번호를 입력해주세요\n ex)대구은행 111-1111");
	console.log(inputAcc);
	
	$.ajax({
		url: 'modifyAcc.do',
		type:'get',
		data: { acc: inputAcc, mno: mno },
		dataType: 'json',
	})
	.done((result) => {
		if(result.retCode == 'OK') {
			alert('!!!');
			//window.location.replace('myInfo.do?memberNum='+mno);
		} else {
			alert('수정실패');
		}
	})
	.fail((err) => console.log(err))
};

//
function pwUpdate() {
	let inputPw = prompt("수정할 비밀번호를 입력해주세요\n ");
	console.log(inputPw);
	
	$.ajax({
		url: 'modifyPw.do',
		type:'get',
		data: { pw : inputPw, mno: mno },
		dataType: 'json',
	})
	.done((result) => {
		if(result.retCode == 'OK') {
			alert('수정성공')
			window.location.replace('myInfo.do?memberNum='+mno);
		} else {
			alert('수정실패');
		}
	})
	.fail((err) => console.log(err))
};
//<script src="static/js/member/modifyinfo.js"></script> 

