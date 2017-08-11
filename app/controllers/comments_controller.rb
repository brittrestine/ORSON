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
    @review = Review.find(params[:review_id])
    @comment = @review.comments.find(params[:id])
    @comment.destroy

    redirect_to "/movies/" + @review.movie.to_s
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
