require 'rails_helper'

feature "Deleting recipes" do
  scenario "Deleting a recipe" do
    FactoryGirl.create(:recipe, name: "Bowl of Cereal")

    visit "/"
    click_link "Bowl of Cereal"
    click_link "Delete Recipe"

    expect(page).to have_content("Recipe has been deleted")

    visit "/"

    expect(page).to have_no_content("Bowl of Cereal")
  end
end
