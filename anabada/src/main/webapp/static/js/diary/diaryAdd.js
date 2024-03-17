$(document).ready(function() {
    // FullCalendar 초기화
    $('#calendar').fullCalendar({
        header: {
            left: 'prev,next today',
            center: 'title',
            right: 'month,agendaWeek,agendaDay'
        },
        selectable: true,
        selectHelper: true,
        editable: true,
        eventLimit: true,
        
        // 날짜 클릭 시 일정 추가 모달 표시
        select: function(start, end) {
            var title = prompt('Event Title:');
            var eventData;
            if (title) {
                eventData = {
                    title: title,
                    start: start,
                    end: end
                };
                $('#calendar').fullCalendar('renderEvent', eventData, true);
                // AJAX 요청을 통해 서버에 일정 추가
                addDiary(eventData);
            }
            $('#calendar').fullCalendar('unselect');
        },
        
        // 달력에 일정 표시
        events: function(start, end, timezone, callback) {
            $.ajax({
                url: '/path/to/getDiaries', // 서버의 일정 조회 처리 경로
                type: 'GET',
                dataType: 'json',
                data: {
                    // 필요한 데이터 전송
                },
                success: function(doc) {
                    var events = [];
                    $(doc).each(function() {
                        events.push({
                            title: $(this).attr('title'),
                            start: $(this).attr('start'), // 일정 시작 날짜
                            end: $(this).attr('end') // 일정 종료 날짜
                        });
                    });
                    callback(events);
                }
            });
        }
    });
});

function addDiary(eventData) {
    // AJAX 요청으로 서버에 일정 추가
    $.ajax({
        url: '/path/to/addDiary', // 서버의 일정 추가 처리 경로
        type: 'POST',
        contentType: 'application/json',
        data: JSON.stringify(eventData),
        success: function(response) {
            console.log('Diary added successfully');
            // 성공 시 필요한 작업 수행
        },
        error: function(xhr, status, error) {
            console.error('Error adding diary', error);
        }
    });
}