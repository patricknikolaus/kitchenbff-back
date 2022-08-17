class RecipesController < ApplicationController
  def index
    recipes = Recipe.all
    render json: recipes
  end

  def create
    recipe = Recipe.new(
      title: params[:title],
      prep_time: params[:prep_time],
      cook_time: params[:cook_time],
      description: params[:description],
    )
    recipe.save
    render json: recipe
  end

  def show
    recipe = Recipe.find_by(id: params[:id])
    render json: recipe
  end

  def update
    recipe = Recipe.find_by(id: params[:id])
    recipe.prep_time = params[:prep_time] || recipe.prep_time
    recipe.title = params[:title] || recipe.title
    recipe.cook_time = params[:cook_time] || recipe.cook_time
    recipe.description = params[:description] || recipe.description
    recipe.save
    render json: recipe
  end

  def destroy
    recipe = Recipe.find_by(id: params[:id])
    recipe.destroy
    render json: { message: "Recipe successfully deleted." }
  end
end
