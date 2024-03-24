/**
 * itemList
 */

console.log('itemList.js')

let page = 1;
let cname = 'all';
let iname = 'all';

$(document).ready(function(e) {

	$('.btnbox').on('click', '.btn', function(e) {
		if (cname != $(this).val()) {
			page = 1;
		}
		cname = $(this).val();
		console.log('cname= ' + cname);
		console.log('page= ' + page);
		searchList(cname, page);
	})
})



$('#key').keypress(function(e) {
	
	let iname = $(this).val();
	console.log(iname);

	$.ajax({
		type: 'post',
		url: 'inameList.do',
		data: { iname, page },
		dataType:'json'
	}).done(function(result) {
		console.log(result); // 검색어에 해당하는 상품 찍혀야함
		if(e.keyCode && e.keyCode == 13){
		
		$('#itemList').html('');

		result.forEach(prop => {
			console.log(prop.itemName);

			$('#itemList').append(
				$('<div>').addClass('col-md-6 col-lg-6 col-xl-4 vesitable').append(
					$('<div>').addClass('border border-primary rounded position-relative vesitable-item').prop('onclick', 'itemLink(' + prop.itemNum + ')').append(
						$('<div>', { class: 'vesitable-img' }).append(
							$('<img>', { src: 'images/' + prop.itemImage, class: 'img-fluid w-100 rounded-top bg-light', onerror: "this.onerror=null; this.src='static/img/errimg.png';" }),
							$('<div>', { class: 'text-white bg-primary px-3 py-1 rounded position-absolute', style: 'top: 10px; right: 10px;' }).text(prop.itemNum),
							$('<div>', { class: 'p-4 rounded-bottom' }).append(
								$('<h4>', { style: 'height:29px;overflow:hidden;' }).text(prop.itemName),
								$('<p>', { style: 'height:85px;overflow:hidden;' }).text(prop.itemInfo),
								$('<div>', { class: 'd-flex justify-content-between flex-lg-wrap' }).append(
									$('<p>', { class: 'text-dark fs-5 fw-bold mb-0 w-100' }).text('￦' + prop.itemPrice)
								)
							)
						)
					)
				)

			); //end #itemList 
			$('.pagination').children().remove();
			$.ajax({
				url: 'seachCnt.do?cid=' + iname,
				method: 'get',
				dataType: 'json'
			})
				.done(total => {
					console.log('Ktotal='+total )
					createPageElement2(total);
				})
				.fail(err => console.error(err));
		}); //end forEach
		}
	}).fail(function(err) {
       alert('err')
	});
	
})

function itemLink(ino) {
	location.href = 'item.do?itemNum=' + ino;
}


function searchList(cname, page) {
	console.log('searchList cname= ' + cname);
	console.log('searchList page= ' + page);
	if (cname == '상의') {
		cname = 't';
	} else if (cname == '하의') {
		cname = 'p';
	} else if (cname == '반팔') {
		cname = 't1';
	} else if (cname == '긴팔') {
		cname = 't2';
	} else if (cname == '반바지') {
		cname = 'p1';
	} else if (cname == '청바지') {
		cname = 'p2';
	} else {
		location.href = 'itemList.do';
		return;
	}

	$.ajax({
		type: 'post',
		url: './searchItem.do',
		data: { cname, page },
		dataType: 'json'
	})
		.done(function(result) {
			console.log(result);
			let clone = $('#getItem').eq(0).clone(true);
			$('#itemList').html('');

			$(result).each(function(idx, ele) {
				clone.find('div.vesitable-item').attr('onclick', 'itemLink(' + ele.itemNum + ')');
				clone.find('img').attr('src', 'images/' + ele.itemImage);
				clone.find('#inum').text(ele.itemNum);
				clone.find('h4').text(ele.itemName);
				clone.find('#info').text(ele.itemInfo);
				clone.find('#ip').text(ele.itemPrice);
				$('#itemList').append(clone);
				clone = $('#getItem').eq(0).clone(true);
			})

			$('.pagination').children().remove();
			$.ajax({
				url: 'totalCnt.do?cid=' + cname,
				method: 'get',
				dataType: 'json'
			})
				.done(total => {
					console.log('total= '+ total)
					createPageElement(total);
				})
				.fail(err => console.error(err));

		})
		.fail(function(err) {
			alert('error');
		});

}

/*$(document).ready(function(e) {

	$('#key').keyup(function(e) {
	if (cname != $(this).val()) {
			page = 1;
		}
		iname = $(this).val();
		console.log('iname= ' + iname);
		console.log('page= ' + page);
		search(iname, page);
	})
})

function search(iname, page) {
	console.log('searchList cname= ' + iname);
	console.log('searchList page= ' + page);
	

	$.ajax({
		type: 'post',
		url: './inameList.do',
		data: { iname, page },
		dataType: 'json'
	})
		.done(function(result) {
			console.log(result);
			let clone = $('#getItem').eq(0).clone(true);
			$('#itemList').html('');

			$(result).each(function(idx, ele) {
				clone.find('div.vesitable-item').attr('onclick', 'itemLink(' + ele.itemNum + ')');
				clone.find('img').attr('src', 'images/' + ele.itemImage);
				clone.find('#inum').text(ele.itemNum);
				clone.find('h4').text(ele.itemName);
				clone.find('#info').text(ele.itemInfo);
				clone.find('#ip').text(ele.itemPrice);
				$('#itemList').append(clone);
				clone = $('#getItem').eq(0).clone(true);
			})

			$('.pagination').children().remove();
			$.ajax({
				url: 'seachCnt.do?cid=' + iname,
				method: 'get',
				dataType: 'json'
			})
				.done(total => {
					console.log('total= '+ total)
					createPageElement2(total);
				})
				.fail(err => console.error(err));

		})
		.fail(function(err) {
			alert('error');
		});

}*/


// 페이지네이션.
function createPageElement(total) {
	let pagination = $('div.pagination');
	pagination.addClass('abc');
	pagination.html('');

	let totalCnt = total;
	let startPage, endPage;
	let next, prev;
	let realEnd = Math.ceil(totalCnt / 6);
	endPage = Math.ceil(page / 5) * 5;
	startPage = endPage - 4;
	endPage = endPage > realEnd ? realEnd : endPage;
	next = endPage < realEnd ? true : false;
	prev = startPage > 1;

	if (prev) {
		$('<a />').attr('href', 'javascript:void(0);').attr('data-pno', startPage - 1).html('&laquo;').appendTo(pagination);
	}
	for (let p = startPage; p <= endPage; p++) {
		let aTag = $('<a />').attr('href', 'javascript:void(0);').attr('data-pno', p).text(p).appendTo(pagination);
		if (p == page) aTag.addClass('active');
	}
	if (next) {
		$('<a />').attr('href', 'javascript:void(0);').attr('data-pno', endPage + 1).html('&raquo;').appendTo(pagination);
	}
	pagingFunc();
}


function pagingFunc() {
	document.querySelectorAll('.pagination>a') // NodeList로 반환.
		.forEach(item => {
			console.log('item=' +item)
			item.addEventListener('click', function(e) {
				e.preventDefault(); // 링크의 기능 차단.(a태그는 무조건 링크라서)
				page = item.dataset.pno;
				console.log('pagingFunc page ' + page + ', cname ' + cname);
				searchList(cname, page);
			})
		});
}

