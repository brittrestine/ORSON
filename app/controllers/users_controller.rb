class UsersController < ApplicationController
  def show
    @user = User.find_by(params[:user_id])
    @reviews = Review.where(user_id: @user.id)
  end
end
