class RecipesController < ApplicationController
  def index
    recipes = Recipe.all
    render json: recipes
  end

  def create
    recipe = Recipe.new(
      title: params[:user_id],
      description: params[:description],
      prep_time: params[:prep_time],
      cook_time: params[:cook_time],
    )
    recipe.save
    render json: recipe
  end

  def show
    recipe = Recipe.find_by(id: params[:id])
    render json: recipe

  def update
    recipe = Recipe.find_by(id: params[:id])
    recipe.title = params[:title] || recipe.title
    recipe.description = params[:description] || recipe.description
    recipe.prep_time = params[:prep_time] || recipe.prep_time
    recipe.cook_time = params[:cook_time] || recipe.cook_time
    recipe.save
    render json: recipe
  end

  def destroy
    favorite = Favorite.find_by(id: params[:id])
    favorite.destroy
    render json: {message: "Favorite successfully deleted."}
  end
end
