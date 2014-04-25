$(document).ready(function(){
  $('form#new_answer').on("ajax:success", function(e, data){

  console.log("hi")

    $('ul.answer-list').append(data)
  })
});

