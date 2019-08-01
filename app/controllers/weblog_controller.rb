class WeblogController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def index
  end

  def new
    @log = Blog.new
  end

  def create
    redirect_to :index
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
    redirect_to root_path
  end
  private
  
  def blog_params
    # params.require(:).permit(:title,:content)
  end
end
