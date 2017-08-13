class HomeController < ApplicationController
  def index
  	@movielist = Tmdb::Movie.popular.results[0..3]
  end
end
