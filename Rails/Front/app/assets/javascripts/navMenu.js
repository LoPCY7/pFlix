document.addEventListener('turbolinks:load', function (){

  $('.menu').click(function(e) {
    e.stopPropagation();
    $('#main_nav').toggleClass('active');
  });

  $(document).click(function() {
    $('#main_nav').removeClass('active');
  });
});
