class MoviesController < ApplicationController
  def index
    if params[:page]
      @movies = Tmdb::Movie.popular({ page: params[:page] }).results
      response = { 
        html: render_to_string(partial: "movies/movies", locals: { movies: @movies }),
        page: params[:page].to_i + 1 
      }.to_json
      
      render json: response
  	else
      @movies = Tmdb::Movie.popular.results
    end
  end

  def show
  	@movie = Tmdb::Movie.detail(params[:id])
    @reviews = Review.where(movie: @movie.id)
  end


end
