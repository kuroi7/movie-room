class MoviesController < ApplicationController

  def search
    @search_term = params[:looking_for]
    movie_results = Movie.search(@search_term)
    if @search_term
      @movie_results = movie_results["results"]
    else
      @movie_results = 
    end
  end
  
  def show
    @movie_info = Movie.details(params[:id])
  end
end
