/**
 * 
 */

console.log('item.js');

$(document).ready(function(){
	
	if(mno != seller) {
		$('#btnS button').on('click', function(e){
			alert('잘못된 접근입니다.');
		})
	} else if (mno == seller) {
		$('#btnS button').on('click', function(e){
			
		})
	}
})

function modifyForm() {
	if(mno != seller) {
		alert('잘못된 접근입니다.');
	} else if (mno == seller) {
		window.location.href = 'modifyItemForm.do?ino=' + ino + '&seller=' + seller;
	}
}