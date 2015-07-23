$(document).ready(function(){
  if (window.location.search == ''){
    $('.ui.bottom.segment').empty();
  }
  var term = '#' + location.search.match(/[a-zA-Z]+/)[0];
  $(term).addClass('active');

});
