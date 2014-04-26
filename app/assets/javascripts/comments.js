$(document).ready(function(){
  $('form.question-comment-form').on("ajax:success", function(e,data){
    $('ul.comment-list').prepend(data);
    $('input#comment_body').val('');
    $(this).html('')
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
    $('ul#answer'+ answerId).append(data)
    $('div#answer' +  answerId).toggle()
    $('input#comment_body').val('')
  })
  $('form.answer-comment-form').on('ajax:error', function(e,data){
    console.log(this)
    console.log(data.responseText)
    $(this).prepend(data.responseText)
  })

});
