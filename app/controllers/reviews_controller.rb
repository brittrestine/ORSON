class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end
##### create review 'get' method ######
  def new
    @review = Review.new
    @movie = Tmdb::Movie.detail(params[:format])
  end
##### 'post' method for form ########
  def create
    @review = Review.new(review_params)
    @movie = Tmdb::Movie.detail(params[:movie])
    @review.movie = @movie.id
    @review.user = current_user
    @review.save

     if @review.save
      redirect_to movie_path(@movie.id)
    else
      render movie_path(@movie.id)
    end
  end

  def edit

    # @review = Review.find(params[:id])
     @review = Review.find(params[:id])

  end

  def update
    @review = Review.find(params[:id])

    if @review.update(review_params)
      redirect_to @review
    else
      render 'edit'
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  def destroy
    # @review = Review.where(movie: params[:id])
    @review = Review.find(params[:id])
    @review.destroy

    redirect_to user_path
  end

private

  def review_params
    params.require(:review).permit(:body, :rating, :movie)
  end
end
