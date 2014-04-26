$(document).ready(function(){
  $('form#new_answer').on("ajax:success", function(e, data){
    $('ul.answer-list').append(data);
    $('div.answer-question').toggle();
    $('textarea.form-control').val('');

  })
  $('form#new_answer').on("ajax:error", function(e, data){
    console.log(data)
  })

  $('a.show-answer-form').on('click', function(){
    $('div.answer-question').toggle()
  })



});

