class CommentsController < ApplicationController

  def new
    @comment = Comment.new
    @review = Review.find(params[:review_id])
    # @review.comments = Comment.new
  end

  def create
    @review = Review.find(params[:review_id])
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.review = @review
    @comment.save
      redirect_to "/movies/" + @review.movie.to_s
  end

  def destroy
    # @review = Review.find(params[:review_id])
    @review = Review.find_by(id: 6)
    @comment = @review.comments.find(params[:id])
    @comment.destroy
    # redirect_to review_path(@review)
    redirect_to 'review/new'
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
