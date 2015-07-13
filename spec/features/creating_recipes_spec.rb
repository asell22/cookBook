require 'rails_helper'

feature 'Creating Recipes' do
  scenario 'can create a recipe' do
    visit '/'

    click_link 'New Recipe'

    fill_in 'Name', with: "Bowl of Cereal"
    fill_in 'Ingredients', with: "Milk Fruitloops"
    fill_in 'Procedure', with: "Pour cereal into bowl, pour 3/4 cup of milk over it"
    select 1, from: :servings
    select '1-5 minutes', from: :cooking_time
    select 'Simple', from: :level_of_difficulty

    click_button 'Add Recipe'

    expect(page).to have_content('Recipe has been added')
  end
end
