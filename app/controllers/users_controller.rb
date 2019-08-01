class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @weblogs = @user.weblogs
  end
end