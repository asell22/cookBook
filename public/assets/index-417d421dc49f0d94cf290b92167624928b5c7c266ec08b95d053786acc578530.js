$(document).ready(function() {
  $('.new_recipe').on('click', function(event){
    event.preventDefault();
    $.get(window.location + '/recipes/new', function(data) {
      $('.raised.segment').removeClass('hide');
    }).then(function(data) {
      $('#space').empty().html(data);
    });
  });

  $('.show_all').on('click', function(event) {
    console.log(event);
    event.preventDefault();
    $.get(window.location + '/all', function(data) {
      $('.raised.segment').removeClass('hide');
    }).then(function(data) {
      $('#space').empty().html(data);
    });
  });
});
