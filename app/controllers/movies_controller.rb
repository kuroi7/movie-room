class MoviesController < ApplicationController

  def search
    @search_term = params[:looking_for]
    movie = @search_term ? Movie.search(@search_term) : Movie.index
    @movie_results = movie["results"]
  end
  
  def show
    @movie_info = Movie.details(params[:id])
  end
end
