<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple Chat Room</title>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f0f0;
        }
 		
        #chat-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 20px;
            width: 100%;
            max-width: 400px;
            margin: 20px auto;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            border-radius: 8px;
            overflow: hidden;
        }

        #chat-box {
            width: 100%;
            height: 400px;
            border: none;
            overflow-y: auto;
            background-color: #fff;
            padding: 20px;
            display: flex;
            flex-direction: column;
            gap: 10px; 
            margin-bottom: 10px; 
        }

        #chat-box p {
            margin: 0;
            padding: 10px;
            background-color: #e7f5ff; 
            border-radius: 20px;
            max-width: 70%;
            word-break: break-word;
            margin-left: 10px
            
        }

        #input-area {
            width: 100%;
            padding: 0 10px;
            box-sizing: border-box; 
        }
	
        #chat-input, #AddnegoChat {
        	margin-bottom: 10px;
            width: 100%;
            margin-bottom: 10px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box; 
        }

        #button-container {
            display: flex;
            justify-content: flex-end;
            padding: 0 10px 10px 10px;
        }
		#memberName {
			margin-bottom : 10px;
			 width: 30%;
			 padding : 3px;
			 border: 1px solid #ccc;
            border-radius: 4px;
		}
		
        button {
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            background-color: #007bff;
            color: white;
            cursor: pointer;
            margin-left: 10px; 
        }

        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div id="chat-container">
	
    <div id="chat-box">
        <c:forEach items="${negoForm}" var="nego">
            <p><c:out value="${nego.memberName}"/>: <c:out value="${nego.negoChat}"/></p>
        </c:forEach>
    </div>
    <div id="input-area">
    	<input type="text" id="memberName" value="${member.memberName}" readonly>
        <input type="text" id="AddnegoChat" name="AddnegoChat" placeholder="메시지를 입력하세요...">
        <c:if test="${not empty negoForm}">
            <input type="hidden" id="itemNum" value="${itemNum}">
            <input type="hidden" id="memberNum" value="${member.memberNum}">
        </c:if>
    </div>
    <div id="button-container">
        <button id="sendbtn">전송하기</button>
    </div>
    
    <p>상품번호 : ${itemNum }</p>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
$('#sendbtn').on('click', function() {
    let negoChat = $('#AddnegoChat').val().trim(); 
    if(negoChat === '') {
        alert('메시지를 입력하세요.');
        return; 
    }
    let itemNum = "${itemNum}";
    let memberNum = "${member.memberNum}";
    let memberName = "${member.memberName}"
    let param = {negoChat: negoChat, itemNum: itemNum, memberNum: memberNum , memberName: memberName}; 
    console.log(param);
    $.ajax({
        url: 'AddnegoChat.do',
        method: 'post',
        data: param,
        dataType: 'json'
    })
    .done(function(result) {
        if(result.retCode == 'OK') {
            alert('등록완료');
            $('#AddnegoChat').val('');
           
            let newMessage = $('<p>').text(`나: ${negoChat}`); 
            $('#chat-box').append(newMessage);
            $('#chat-box').scrollTop($('#chat-box')[0].scrollHeight);
            location.reload();
        } else {
            alert('등록실패');
        }
    })
    .fail(function(err) {
            console.log('err=>', err);
            alert('에러 발생');
        });
    });
   
   function purchaseConfirm(orderNum) {
	    if (confirm('구매를 확정하시겠습니까?')) {
	        $.ajax({
	            url: 'purchaseConfirm.do', 
	            method: 'POST',
	            data: { itemNum: itemNum },
	            dataType: 'json',
	            success: function(response) {
	                if (response.retCode == 'OK') {
	                    alert('구매가 확정되었습니다.');
	                    location.reload();
	                } else {
	                    alert('구매 확정을 할 수 없습니다.');
	                }
	            },
	            error: function(xhr, status, error) {
	                alert('처리 중 오류가 발생했습니다.');
	            }
	        });
	    }
	}
</script>

</body>
</html>