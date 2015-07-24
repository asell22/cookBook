$(document).ready(function() {
  $('.new_recipe').on('click', function(event){
    event.preventDefault();
    $.get(window.location + '/recipes/new', function(data) {
      $('.raised.segment').removeClass('hide');
    }).then(function(data) {
      $('#space').empty().html(data);
    });
  });

  // $('.show_all').on('click', function(event) {
  //   console.log(event);
  //   event.preventDefault();
  //   $.get(window.location + '/all', function(data) {
  //     $('.raised.segment').removeClass('hide');
  //   }).then(function(data) {
  //     $('#space').empty().html(data);
  //   });
  // });
  $('.search').on('click', function(event) {
    event.preventDefault();
    $.get(window.location + '/search', function(data) {
      $('.raised.segment').removeClass('hide');
    }).then(function(data) {
      $('#space').empty().html(data);
      $('.ui.bottom.segment').addClass('hide');
    });
  });

  $('.search-form').submit(function(event) {
    event.preventDefault();
    var input = $('#search').val();
    console.log(input);
    $.get(window.location + '/search?utf8=✓&search=' + input, function(data) {
      $('.raised.segment').removeClass('hide');
    }).then(function(data) {
      $('#space').empty().html(data)
    }).then(function(){
      $('.ui.bottom.segment').removeClass('hide');
    });
  })

  $('.ui.dropdown.item').on('click', '.item', function(event) {
    event.preventDefault();
    var id = this.id;
    
    $.get(window.location + '/search?' + id + '=true', function(data) {
      $('.raised.segment').removeClass('hide');
    }).then(function(data) {
      $('#space').empty().html(data)
    });
  });
});
