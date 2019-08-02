class WeblogsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def index
    @weblogs = Weblog.all
  end

  def new
    @weblog = Weblog.new
  end

  def create
    @weblog = Weblog.create(weblog_params)
    redirect_to root_path
  end

  def edit
    @weblog = Weblog.find(params[:id])
  end

  def update
    @weblog = Weblog.find(params[:id])
    @weblog.update(weblog_params)
    redirect_to root_path
  end

  def show
    @weblog = Weblog.find(params[:id])
  end

  def destroy
    @weblog = Weblog.find(params[:id])
    @weblog.destroy
    redirect_to root_path
  end

  private
  def weblog_params
    params.require(:weblog).permit(:title,:content).merge(user_id: current_user.id)
  end
end
