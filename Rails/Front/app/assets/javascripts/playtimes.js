$(function(){
  $("form").submit(function(event){
    event.preventDefault();

    var action = $(this).attr('action');
    var method = $(this).attr('method');


    var userID = $(this).find('#playtime_userid').val();
    var movieID = $(this).find('#playtime_movieid').val();
    var movieTime = $(this).find('#playtime_movietime').val();

  });
});
