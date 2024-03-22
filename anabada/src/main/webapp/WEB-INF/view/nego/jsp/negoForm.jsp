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
            margin-bottom: 10px; /* Adjusted margin for consistency */
        }

        #chat-box p {
            margin: 0;
            padding: 10px;
            background-color: #e7f5ff; 
            border-radius: 20px;
            max-width: 70%;
            word-break: break-word;
        }

        #input-area {
            width: 100%;
            padding: 0 10px;
            box-sizing: border-box; /* Ensure padding is included in the width */
        }

        #chat-input, #username {
            width: 100%;
            margin-bottom: 10px; /* Spacing between inputs */
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box; /* Ensure padding is included in the input width */
        }

        #button-container {
            display: flex;
            justify-content: flex-end;
            padding: 0 10px 10px 10px;
        }

        button {
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            background-color: #007bff;
            color: white;
            cursor: pointer;
            margin-left: 10px; /* Spacing between buttons */
        }

        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div id="chat-container">
	<p>주문번호: 1</p>
        <div id="chat-box"></div>
        <div id="input-area">
            <input type="text" id="username" placeholder="Your name...">
            <input type="text" id="negoContents" name="negoContents" placeholder="Type a message...">
        </div>
        <div id="button-container">
            <button id="sendbtn">전송하기</button>
            <button id="confirm-btn">구매확정</button>
        </div>
    </div>
</body>
</html>
   
    <script> 
        $('#sendbtn').on('click', funtion() {
        	let negoContents = $('#negoContents').val();
        	
        	let param = {negoContents: negoContents, contentDate: contentDate}
        	function sendbtn (param={negoContents: 'negoContents', contentDate: 'contentDate'},successCall,errorCall){
        	$.ajax({
        		url:'addContents.do',
        		method:'post',
        		data:param,
        		dataType:'json'
        	 })
        	 .done(successCall)
        	 .fail(errorCall)
            }
        	sendbtn(param, function(result) {
        		if(result.recode == 'OK') {
        			alert('등록완료');
        			$('#negoContents').val('');
        			location.reload();
        		}else{
        			alert('등록실패');
        		}
        	},function(err) {
        		console.log('err=>', err)
        	})
        	
       		});
    
    
    
    
    
    
    
    
    
    
    
    document.getElementById('send-btn').addEventListener('click', function() {
            const chatBox = document.getElementById('chat-box');
            const chatInput = document.getElementById('chat-input');
            
            const newMessage = document.createElement('p');
            newMessage.textContent = chatInput.value;
            
            chatBox.appendChild(newMessage);
            chatInput.value = ''; 
        });
    
        
        
        
        </script>
    
    
    
    
    