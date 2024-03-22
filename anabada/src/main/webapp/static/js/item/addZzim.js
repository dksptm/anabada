/**
 * addZzim
 */
let mno = '${member.memberNum }';
console.log('멤버!',mno);

function addZzim(ino) {
	
		$.ajax({
			url: 'addCart.do',
			method: 'post',
			data: {ino:ino, mno: mno},
			dataType: 'json'
		})
		.done((result) => {
      	console.log(result);
      	location.reload();
      })
      .fail((error) => console.error(err)) 
	}


