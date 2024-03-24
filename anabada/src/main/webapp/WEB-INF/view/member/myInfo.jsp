<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
table {
	width: 80%;
	border-collapse: collapse;
}

th, td {
	border: 1px solid black;
	padding: 8px;
	text-align: left;
}

th {
	background-color: #f2f2f2;
}
</style>

<!-- Single Page Header start -->
<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">내 정보</h1>
	<ol class="breadcrumb justify-content-center mb-0">
		<!-- <li class="breadcrumb-item"><a href="#" onclick="">cartList<i class="fas fa-star"></i></a></li> -->
		<li class="breadcrumb-item active text-white"></li>
	</ol>
</div>
<!-- Single Page Header End -->

	<div class="container">
	<%-- <p>${myInfoList }</p> --%>
		 <div>
			<h1>내 정보</h1>
			<table>
				<thead>
					<tr>
						<th>회원번호</th>
						<th>이름</th>
						<th>연락처</th>
						<th>계좌</th>
						<th>비밀번호</th>
					</tr>
				</thead>
				<tbody class= "" >
						<c:forEach items="${myInfoList }" var="my">
						<tr> 
							<td>${my.memberNum }</td>
							<td>${my.memberName }</td>
							<td>${my.memberPhone }</td>
							<td>${my.accountNum } <button type="button" onclick="accUpdate()" class="btn btn-success">수정</button></td>
							<td>${my.memberPassword }<button type="button" onclick="pwUpdate()" class="btn btn-success">수정</button></td>
						</tr>
						</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

<script>
let mno = '${member.memberNum }';
console.log('여기서?',mno);

function accUpdate() {
	let inputAcc = prompt("수정할 계좌번호를 입력해주세요\n ex)대구은행 111-1111");
	console.log(inputAcc);
	
	$.ajax({
		url: 'modifyAcc.do',
		type:'post',
		data: { acc: inputAcc, mno: mno },
		dataType: 'json',
	})
	.done((result) => {
		if(result.retCode == 'OK') {
			alert('수정성공!');
			window.location.replace('myInfo.do?memberNum='+mno);
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
		type:'post',
		data: { pw : inputPw, mno: mno },
		dataType: 'json',
	})
	.done((result) => {
		if(result.retCode == 'OK') {
			alert('수정성공!')
			window.location.replace('myInfo.do?memberNum='+mno);
		} else {
			alert('수정실패');
		}
	})
	.fail((err) => console.log(err))
};
</script>

