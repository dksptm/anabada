/**
 * itemList
 */

$('.btnbox').on('click', '.btn', function(e) {
   let cname = $(this).val();
    console.log(this);
   $.ajax({
      type: 'post',
      url: './searchItem.do',
      data: { cname },
      success: function(result) {
         console.log(result);
         $('#itemList').html('');

         result.forEach(prop => {
            console.log(prop.page)

            $('#itemList').append(
               $('<div>', { class: 'col-md-6 col-lg-6 col-xl-4' }).append(
                  $('<a>', { href: 'item.do?itemNum=' + prop.itemNum }).append(
                     $('<div>', { class: 'rounded position-relative fruite-item' }).append(
                        $('<div>', { class: 'fruite-img' }).append(
                           $('<img>', { src: 'images/' + prop.itemImage, class: 'img-fluid w-100 rounded-top', width: '100px', height: '200px' }),
                           $('<div>', { class: 'text-white bg-secondary px-3 py-1 rounded position-absolute', style: 'top: 10px; left: 10px;' }).text(prop.itemNum),
                           $('<div>', { class: 'p-4 border border-secondary border-top-0 rounded-bottom' }).append(
                              $('<h4>').text(prop.itemName),
                              $('<p>').text(prop.itemInfo),
                              $('<div>', { class: 'd-flex justify-content-between flex-lg-wrap' }).append(
                                 $('<p>', { class: 'text-dark fs-5 fw-bold mb-0' }).text(prop.itemPrice + '원')
                              )
                           )
                        )
                     )
                  )
               )
            )//end #itemList 
         })//end forEach

      },
      error: function(err) {
         alert('error');
      }
   })
})
"${key}"
$('#key').keydown(function(e){
   let iname = $(this).val();
   console.log(this);

   $.ajax({
      type: 'post',
      url: 'inameList.do',
      data: {iname },
      success: function(result) {
         console.log(result);
         $('#itemList').html('');

         result.forEach(prop => {
            console.log(prop.itemName);

            $('#itemList').append(
               $('<div>', { class: 'col-md-6 col-lg-6 col-xl-4' }).append(
                  $('<a>', { href: 'item.do?itemNum=' + prop.itemNum }).append(
                     $('<div>', { class: 'rounded position-relative fruite-item' }).append(
                        $('<div>', { class: 'fruite-img' }).append(
                           $('<img>', { src: 'images/' + prop.itemImage, class: 'img-fluid w-100 rounded-top', width: '100px', height: '200px' }),
                           $('<div>', { class: 'text-white bg-secondary px-3 py-1 rounded position-absolute', style: 'top: 10px; left: 10px;' }).text(prop.itemNum),
                           $('<div>', { class: 'p-4 border border-secondary border-top-0 rounded-bottom' }).append(
                              $('<h4>').text(prop.itemName),
                              $('<p>').text(prop.itemInfo),
                              $('<div>', { class: 'd-flex justify-content-between flex-lg-wrap' }).append(
                                 $('<p>', { class: 'text-dark fs-5 fw-bold mb-0' }).text(prop.itemPrice + '원')
                              )
                           )
                        )
                     )
                  )
               )
            )
         })

      },
      error: function(err) {
         alert('error');
      }
   })
   
})

