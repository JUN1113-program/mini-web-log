class WeblogController < ApplicationController
  def index
  end

  def new

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
end
