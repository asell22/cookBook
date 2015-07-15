require 'rails_helper'

RSpec.describe RecipesController, type: :controller do
  it "displays en error for a missing recipe" do
    get :show, id: "not-here"
    expect(response).to redirect_to(recipes_path)
    message = "The recipe you were looking for could not be found"
    expect(flash[:alert]).to eql(message)
  end
end
