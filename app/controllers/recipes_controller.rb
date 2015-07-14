class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      flash[:notice] = "Recipe has been added"
      redirect_to @recipe
    else
      flash[:alert] = "Recipe has not been added"
      render "new"
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :servings, :cooking_time, :level_of_difficulty, :ingredients, :procedure)
  end
end
