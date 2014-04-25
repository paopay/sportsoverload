$(document).ready(function(){
  $('form#new_comment').on("ajax:success", function(e,data){
    // console.log('success')
    $('ul.comment-list').append(data)
  })
  $('a.add-comment').on('click', function(e){
    e.preventDefault()

    $('.comment-form').toggle()
  })


});
