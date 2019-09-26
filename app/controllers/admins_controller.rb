class AdminsController < ApplicationController
  before_action :admin?

  def index
    @users = User.includes(:weblogs)
  end

  def destroy
    Weblog.find(params[:id]).destroy
    redirect_to admins_path
  end

  private
  def admin?
    redirect_to root_path unless current_user.admin
  end
end
