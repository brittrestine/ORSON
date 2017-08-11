class CommentsController < ApplicationController

  def create
    @review = Review.find(params[:review_id])
    @comment = @review.comments.create(comment_params)
    # redirect_to article_path(@article)
      redirect_to '/review/new'
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
