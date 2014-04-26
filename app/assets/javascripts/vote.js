$(document).ready(function(){
  $('.question-vote-box form').on("ajax:success", function(e,data){
    console.log('success')
    e.preventDefault()
    thing = data
    $('.question-score').html(data)
  })
  // $('a.add-comment').on('click', function(e){
  //   e.preventDefault()

  //   $('.comment-form').toggle()
  // })


});
