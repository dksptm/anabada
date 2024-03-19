<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %> 


    <link href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.0/fullcalendar.min.css' rel='stylesheet' />

    <div id='diary'></div>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.0/fullcalendar.min.js'></script>
    <script>
    $(document).ready(function() {
    	$('#diary').fullCalendar({

    		header: {
    			left: 'prev,next today',
    			center: 'name',
    			right: 'month,agendaWeek,agendaDay'
    		},
    		editable: true,
    		droppable: true,
    		eventLimit: true,
    		events: '/diaryList.do',


    		selectable: true,
    		selectHelper: true,
    		select: function(diaryStartDate, diaryEndDate) {
    			var diaryName = prompt('일정 제목:');
    			var diaryContent = prompt('일정 내용:');
    			if (diaryName) {
    				var eventData = {
    					diaryName: diaryName,
    					diaryContent: diaryContent,
    					diaryStartDate: diaryStartDate.format('YYYY-MM-DD'),
    					diaryEndDate: diaryEndDate.format('YYYY-MM-DD'),
    				};
     	
    				$.ajax({
    					url: '/diaryAdd.do',
    					type: 'POST',
    					data: JSON.stringify(eventData),
    					contentType: 'application/json',
    					success: function(response) {
    						if (response.retCode == "OK") {
    							$('#diary').fullCalendar('renderEvent', eventData, true); // 
    						} else {
    							alert('등록에러..');
    						}
    					}
    				});
    			}
    			$('#diary').fullCalendar('unselect');
    		},


    		eventClick: function(calEvent, jsEvent, view) {
    			var newName = prompt('제목수정:', calEvent.name);
    			var newContent = prompt('제목수정:', calEvent.content);
    			if (newName !== null && newContent !== null) {
    				calEvent.name = newName;
    				calEvent.content = newContent;

    				$.ajax({
    					url: '/diaryModify.do',
    					type: 'POST',
    					data: JSON.stringify({
    						diaryNum: calEvent.id,
    						diaryName: newName,
    						diaryContent: newContent
    					}),
    					contentType: 'application/json',
    					success: function(response) {
    						if (response.retCode == "OK") {
    							$('#diary').fullCalendar('updateEvent', calEvent);
    						} else {
    							alert('수정에러..');
    						}
    					}
    				});
    			} else if (newName === '') {

    				if (confirm('일정을 삭제하시겠습니까?')) {
    					$.ajax({
    						url: '/diaryRemove.do',
    						type: 'POST',
    						data: JSON.stringify({ diaryNum: calEvent.id }),
    						contentType: 'application/json',
    						success: function(response) {
    							if (response.retCode == "OK") {
    								$('#diary').fullCalendar('removeEvents', calEvent.id);
    							} else {
    								alert('일정 삭제 실패');
    							}
    						}
    					});
    				}
    			}
    		},
    	});
    });
    </script>
