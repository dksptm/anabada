/**
 * 
 */

console.log('additem.js');

$(document).ready(function(){
	// 카테고리 가져오기.
	$.ajax({
		url: 'categoryList.do',
		method: 'get',
		dataType: 'json'
	})
	.done(result => {
		console.log(result)
		result.forEach(cate => {
			let opt = $('<option />').val(cate.categoryId).text('\u00A0'+cate.categoryName).addClass('');
			$('#myCate').append(opt);
			if(cate.level == 1){
				opt.attr('disabled', true).text(cate.categoryName).css('color', 'skyblue');
			}
		})
	})
	.fail(err => {console.log(err)})
	
});
