class HomeController < ApplicationController
  def index
  	@movielist1 = Tmdb::Movie.popular.results[0..4]
  end
end
