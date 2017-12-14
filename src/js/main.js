$('.upgrade-option').click(function(){
  var link = $(this);
  link.next('.upgrade-info').toggleClass('reveal');
});
