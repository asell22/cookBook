$(document).ready(function(){
  var term = '#' + location.search.match(/[a-zA-Z]+/);
  $(term).addClass('active');

});
