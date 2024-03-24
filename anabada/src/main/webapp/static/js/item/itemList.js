/**
 * itemList
 */

$('.btnbox').on('click', '.btn', function(e) {
	let cname = $(this).val();
	console.log(this);
	$.ajax({
		type: 'post',
		url: './searchItem.do',
		data: { cname }
	}).done(function(result) {
		console.log(result);
		$('#itemList').html('');

		result.forEach(prop => {
			console.log(prop)
			$('#itemList').append(
				$('<div>', { class: 'col-md-6 col-lg-6 col-xl-4 vesitable' }).append(
					$('<div>', { class: 'border border-primary rounded position-relative vesitable-item', onclick: "location.href ='item.do?itemNum='" + prop.itemNum }).append(
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
		}); //end forEach
	}).fail(function(err) {
		alert('error');
	});
});

$('#key').keyup(function(e) {
	let iname = $(this).val();
	console.log(this);

	$.ajax({
		type: 'post',
		url: 'inameList.do',
		data: { iname }
	}).done(function(result) {
		console.log(result); // 검색어에 해당하는 상품 찍혀야함
		$('#itemList').html('');

		result.forEach(prop => {
			console.log(prop.itemName);

			$('#itemList').append(
				$('<div>', { class: 'col-md-6 col-lg-6 col-xl-4 vesitable' }).append(
					$('<div>', { class: 'border border-primary rounded position-relative vesitable-item', onclick: "location.href ='item.do?itemNum='" + prop.itemNum }).append(
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
		}); //end forEach
	}).fail(function(err) {
		alert('error');
	});
});

