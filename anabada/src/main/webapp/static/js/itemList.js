/**
 * 
 */
function pageList() {
	fetch('getTotal.do?ino=' + ino)
		.then(resolve => resolve.json()) 
		.then(createPageElement)
		.catch(function(err) {
			console.log('error==>', err);
		}) 

	function createPageElement(result) {
		document.querySelector('exampleModalLabel').innerHTML = '';

		let totalCnt = result.totalCount;
		let startPage, endPage; 
		let next, prev;
		let realEnd = Math.ceil(totalCnt / 5);
		endPage = Math.ceil(page / 5) * 5;
		startPage = endPage - 4;
		endPage = endPage > realEnd ? realEnd : endPage;
		next = endPage < realEnd ? true : false;
		prev = startPage > 1;

		if (prev) {
			let aTag = document.createElement('a');

			aTag.innerHTML = '&laquo;'; // <<
			aTag.href = '#';
			aTag.setAttribute('data-page', startPage - 1)
			document.querySelector('div.pagination').appendChild(aTag);
		}
		for (let p = startPage; p <= endPage; p++) {
			let aTag = document.createElement('a');
			aTag.innerText = p;
			aTag.href = '#';
			aTag.setAttribute('data-page', p);
			if (p == page) {
				aTag.className = 'active';
			}
			document.querySelector('div.pagination').appendChild(aTag);
		}
		if (next) {
			let aTag = document.createElement('a');

			aTag.innerHTML = '&raquo;'; // >>
			aTag.href = '#';
			aTag.setAttribute('data-page', endPage + 1)
			document.querySelector('div.pagination').appendChild(aTag);
		}
		pagingFunc(); 
	}
} 
pageList();
 