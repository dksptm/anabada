/**
 * 
 */

console.log('orderitem.js');

$(document).ready(function(){
	
	$('#jusot').slideUp();	
	$('#jusoj').slideUp();	
	$('#payment').slideUp();	
	
	// 배송지/직거래 슬라이드.
	$('#jusoOpen').on('click', 'button', function(e){
		console.log($(this).text().trim() == '택배거래');
		if($(this).text().trim() == '택배거래'){
			$(this).css('backgroundColor', '').toggleClass('btn-success');
			$('#jusot').slideToggle();
			$('#payment').slideToggle();
		}
		if ($(this).text().trim() == '직거래') {
			$(this).css('backgroundColor', '').toggleClass('btn-success');
			$('#jusoj').slideToggle();
			$('#payment').slideToggle();		
		}
		
	})
	
	
});
