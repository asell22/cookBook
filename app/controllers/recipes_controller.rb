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

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      flash[:notice] = "Recipe has been edited"
      redirect_to @recipe
    else
      flash[:alert] = "Recipe has not been edited"
      render "edit"
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    flash[:notice] = "Recipe has been deleted"

    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :servings, :cooking_time, :level_of_difficulty, :ingredients, :procedure)
  end
end
