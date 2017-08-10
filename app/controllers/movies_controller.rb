class MoviesController < ApplicationController
  def index
  	@movie_now_playing1 = Tmdb::Movie.now_playing.results[0..4]
  	@movie_now_playing2 = Tmdb::Movie.now_playing.results[5..9]
  	@movie_now_playing3 = Tmdb::Movie.now_playing.results[10..14]
  	@movie_now_playing4 = Tmdb::Movie.now_playing.results[15..19]
  end

  def show
  	@movie = Tmdb::Movie.detail(params[:id])
  end


end
