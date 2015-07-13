require 'rails_helper'

feature 'Visiting Root Page' do
  scenario '/index shows up as root page' do
    visit '/'
    expect(page).to have_content('Recipes')
  end
end
