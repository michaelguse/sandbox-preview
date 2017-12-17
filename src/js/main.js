$('.upgrade-option').click(function(){
  var link = $(this);
  link.next('.upgrade-info').toggleClass('reveal');
});

var currentPage = $(location).attr('pathname');
if(currentPage.indexOf('upgrade-info') > -1){
  $('.back-link').addClass('reveal');
}
