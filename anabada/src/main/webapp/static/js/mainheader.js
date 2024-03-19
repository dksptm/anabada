/**
 * 
 */

console.log('mainheader.js');

$(document).ready(function(){
	// 카테고리 가져오기.
	$.ajax({
		url: 'categoryList.do',
		method: 'get',
		dataType: 'json'
	})
	.done(result => {;
		result.forEach(cate => {
			let list = $('<li />').append($('<a href="#" />').text(cate.categoryName));
			$('#ulTag').append(list);
		})
		$('#ulTag').children().slideUp();
	})
	.fail(err => {console.log(err)})
	
	// 카테고리 보이기.
	$('#cate').on('click', function(e){
		$('#ulTag').children().slideToggle();
	});
	
});
