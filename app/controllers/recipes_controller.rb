class RecipesController < ApplicationController
  def index
    @search_term =  params[:search] || 'organic'
    @recipes_found = Recipe.for(@search_term)
  end

  def show
    @recipe = Recipe.show(params[:id])
  end
end
