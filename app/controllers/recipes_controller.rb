class RecipesController < ApplicationController
  def index
    @search_term =  params[:search] || 'organic'
    @search_results = Recipe.for(@search_term)
  end

  def view
  end
end
