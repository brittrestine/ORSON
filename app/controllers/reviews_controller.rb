class ReviewsController < ApplicationController
  def index
  end

  def new
    @review = Review.new
    @movie = Tmdb::Movie.detail(params[:id])
  end

  def create
    @review = Review.new(review_params)
    # @review.user_id = rand(1..1000)
    @movie = Tmdb::Movie.detail(params[:id])
    @review.user_id = current_user.id
    @review = @movie.review.create(review_params)

     if @review.save
      redirect_to '/movies/show'
    else
      render 'movies/show'
    end
  end

 def edit
    @review = Review.find(params[:id])
    # @review = Review.find_by(id:6)
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

    redirect_to reviews_path
  end

private

  def review_params
    params.require(:review).permit(:body, :rating)
  end
end
