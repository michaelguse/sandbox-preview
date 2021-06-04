$('.upgrade-option').click(function () {
  var link = $(this);
  link.next('.upgrade-info').toggleClass('reveal');
});

var currentPage = $(location).attr('pathname');
if (currentPage.indexOf('sandbox') > -1) {
  $('.back-link-header').addClass('reveal');
}
