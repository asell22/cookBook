$(document).ready(function() {

  $('.new_recipe').on('click', function(event){
    event.preventDefault();
    $.get(window.location + '/recipes/new', function(data) {
      $('#space').html(data);
    })

  });
});
