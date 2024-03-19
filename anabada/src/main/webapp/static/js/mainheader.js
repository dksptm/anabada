/**
 * 
 */

console.log('mainheader.js');

$(document).ready(function(){

	$.ajax({
		url: 'categoryList.do',
		method: 'get',
		dataType: 'json'
	})
	.done(result => {;
		result.forEach(cate => {
			console.log(cate.categoryName);
			let list = $('<li />').append($('<a href="#" />').text(cate.categoryName));
			$('#ulTag').append(list);
		})
		$('#ulTag').children().slideUp();
	})
	.fail(err => {console.log(err)})
	
	$('#cate').on('click', function(e){
		$('#ulTag').children().slideToggle();
	});
	
});
