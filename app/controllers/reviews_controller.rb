class ReviewsController < ApplicationController
  def index
    @reviews = Review.all

  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = rand(1..1000)

    # @review.user_id = current_user.id
    # @review = @movie.review.create(review_params)

     if @review.save
      redirect_to '/reviews/new'
    else
      render 'new'
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
    @review = Review.find(params[:id])
    @review.destroy

    redirect_to user_path
  end

private

  def review_params
    params.require(:review).permit(:body, :rating)
  end
end
