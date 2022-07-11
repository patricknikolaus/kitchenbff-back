class IngredientsController < ApplicationController
  def index
    ingredients = Ingredient.all
    render json: ingredients
  end

  def create
    ingredient = Ingredient.new(
      recipe_id: params[:recipe_id],
      measurement: params[:measurement],
      name: params[:name]
    )
    ingredient.save
    render json: ingredient
end

def show
  ingredient = Ingredient.find_by(id: params[:id])
  render json: ingredient
end

  def destroy
    ingredient = Ingredient.find_by(id: params[:id])
    ingredient.destroy
    render json: {message: "Ingredient successfully deleted."}
  end
end
