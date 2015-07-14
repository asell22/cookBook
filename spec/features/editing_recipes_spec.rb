require 'rails_helper'

feature "Editing Recipes" do
  scenario "Updating a recipe" do
    FactoryGirl.create(:recipe, name: "Bowl of Cereal")

    visit "/"
    click_link "Bowl of Cereal"
    click_link "Edit Recipe"
    fill_in "Name", with: "Bowl of Fruit Loops"
    click_button "Update Recipe"

    expect(page).to have_content("Recipe has been updated")
  end
end
