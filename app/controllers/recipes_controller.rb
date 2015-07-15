class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

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
  end

  def edit
  end

  def update
    if @recipe.update(recipe_params)
      flash[:notice] = "Recipe has been edited"
      redirect_to @recipe
    else
      flash[:alert] = "Recipe has not been edited"
      render "edit"
    end
  end

  def destroy
    @recipe.destroy

    flash[:notice] = "Recipe has been deleted"

    redirect_to recipes_path
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = "The recipe you were looking for could not be found"
    redirect_to recipes_path
  end

  def recipe_params
    params.require(:recipe).permit(:name, :servings, :cooking_time, :level_of_difficulty, :ingredients, :procedure)
  end
end
