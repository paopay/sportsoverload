$(document).ready(function(){
  $('form#new_answer').on("ajax:success", function(e, data){
    $('ul.answer-list').prepend(data);
    $('div.answer-question').toggle();
    $('textarea.form-control').val('');
    $('div#answer-errors').html('')

  })
  $('form#new_answer').on("ajax:error", function(e, xhr, status, error){
    console.log(xhr)
    console.log(xhr.responseText)
     $('div#answer-errors').append(xhr.responseText);
  })

  $('a.show-answer-form').on('click', function(){
    $('div.answer-question').toggle()
  })



});

