$(document).ready(function(){
  $('form.question-comment-form').on("ajax:success", function(e,data){
    // console.log('success')
    $('ul.comment-list').prepend(data)
  })

  $('a.add-comment').on('click', function(e){
    e.preventDefault()
    $('.comment-form-question').toggle()
  })

  $('a.show-comment-form').on('click', function(e){
    var answerId = $(this).data('id')
    $('div#answer' +  answerId).toggle()
  })

  $('form.answer-comment-form').on('ajax:success', function(e,data){
    var answerId = $(this).data('id')
    $('ul#answer'+ answerId).prepend(data)
  })


});
