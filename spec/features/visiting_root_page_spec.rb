require 'rails_helper'

feature 'Visiting Root Page' do
  scenario '/index shows up as root page' do
    visit '/'
    expect(page).to have_content('Recipes')
  end

  scenario 'Listing all recipes' do
    recipe = FactoryGirl.create(:recipe, name: "Bowl of Cereal")
    visit '/'
    click_link 'Bowl of Cereal'
    expect(page.current_url).to eq(recipe_url(recipe))
  end
end
