require "rails_helper"

feature "Creating Recipes" do
  before do
    visit "/"
    click_link "New Recipe"
  end
  scenario "can create a recipe" do

    fill_in "Name", with: "Bowl of Cereal"
    fill_in "Ingredients", with: "Milk Fruitloops"
    fill_in "Procedure", with: "Pour cereal into bowl, pour 3/4 cup of milk over it"
    select 1, from: :servings
    select "1-5 minutes", from: :cooking_time
    select "Simple", from: :level_of_difficulty

    click_button "Add Recipe"

    expect(page).to have_content("Recipe has been added")
  end

  scenario "cannot create a recipe without a name" do

    fill_in "Ingredients", with: "Milk Fruitloops"
    fill_in "Procedure", with: "Pour cereal into bowl, pour 3/4 cup of milk over it"
    select 1, from: :servings
    select "1-5 minutes", from: :cooking_time
    select "Simple", from: :level_of_difficulty

    click_button "Add Recipe"

    expect(page).to have_content("Recipe has not been added")
    expect(page).to have_content("Name can't be blank")
  end

  scenario "cannot create a recipe without listing ingredients" do
    fill_in "Name", with: "Bowl of Cereal"
    fill_in "Procedure", with: "Pour cereal into bowl, pour 3/4 cup of milk over it"
    select 1, from: :servings
    select "1-5 minutes", from: :cooking_time
    select "Simple", from: :level_of_difficulty

    click_button "Add Recipe"
    expect(page).to have_content("Recipe has not been added")
    expect(page).to have_content("Ingredients can't be blank")
  end

  scenario "cannot create a recipe without a procedure" do
    fill_in "Name", with: "Bowl of Cereal"
    fill_in "Ingredients", with: "Milk Fruitloops"
    select 1, from: :servings
    select "1-5 minutes", from: :cooking_time
    select "Simple", from: :level_of_difficulty

    click_button "Add Recipe"
    expect(page).to have_content("Recipe has not been added")
    expect(page).to have_content("Procedure can't be blank")
  end

  scenario "see select box for food preferences" do
    expect(page).to have_content("Food Preferences")
  end
end
