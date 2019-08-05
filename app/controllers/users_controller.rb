class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @weblogs = @user.weblogs
    @allviewed,@allcomments = count
  end

  private
  def count
    allviewed = 0
    allcomments = 0
    @weblogs.each do |weblog|
      allviewed += weblog.viewed
      allcomments += weblog.comments.length
    end
    return allviewed, allcomments
  end
end