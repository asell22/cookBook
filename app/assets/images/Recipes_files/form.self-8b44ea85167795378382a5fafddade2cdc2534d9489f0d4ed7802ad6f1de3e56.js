$(document).ready(function() {
  $('.ui.dropdown').dropdown();
  var validate= $('.ui.small.form').form({
              fields: {
                name: {
                  identifier : 'name',
                  rules: [
                    {
                      type: 'empty',
                    }
                  ]
                },
                servings: {
                  identifier: 'servings',
                  rules: [
                    {
                      type: 'empty',
                    }
                  ]
                },
                cooking_time: {
                  identifier: 'cooking_time',
                  rules: [
                    {
                      type: 'empty',
                    }
                  ]
                },
                level_of_difficulty: {
                  identifier: 'level_of_difficulty',
                  rules: [
                    {
                      type: 'empty',
                    }
                  ]
                },
                food_preference: {
                  identifier: 'food_preference',
                  rules: [
                    {
                      type: 'empty',
                    }
                  ]
                },
                food_type: {
                  identifier: 'food_type',
                  rules: [
                    {
                      type: 'empty',
                    }
                  ]
                },
                cuisine: {
                  identifier: 'cuisine',
                  rules: [
                    {
                      type: 'empty',
                    }
                  ]
                },
                ingredients: {
                  identifier: 'ingredients',
                  rules: [
                    {
                      type: 'empty',
                    }
                  ]
                },
                procedure: {
                  identifier: 'procedure',
                  rules: [
                    {
                      type: 'empty'
                    }
                  ]
                },
              }

            });


});
