$(document).ready(function() {
  $('.new_recipe').on('click', function(event){
    event.preventDefault();
    $.get(window.location + '/recipes/new', function(data) {
      $('.raised.segment').removeClass('hide');
    }).then(function(data) {
      $('#space').empty().html(data);
    });
  });

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

  $('.search-dropdown').on('click', '.item', function(event) {
    event.preventDefault();
    var title = this.text;
    var id = this.id;
    console.log('clicked');
    $.get(window.location + '/search?' + id + '=true', function(data) {
      // $('.raised.segment').removeClass('hide');
    }).then(function(data) {
      $('#space').empty().html(data);
    }).then(function(data) {
      $('.title').text(title + " Recipes")
    });
  });

  $('.ui.bottom.segment').on('click', 'a.recipe', function(event){
    event.preventDefault();
    var showPath = this.href;
    console.log(showPath);
    $.get(showPath, function(data) {
      $('#space').empty().html(data);
    });
  });



  // $('.new_comment').on('submit', function(event) {
  //   event.preventDefault();
  //   var input = $('.comment-body').val();
  //   console.log(input);
  // });
});
