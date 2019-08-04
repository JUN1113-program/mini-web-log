class CommentsController < ApplicationController
  def create
    Comment.create(comment_params)
    redirect_to weblog_path(params[:weblog_id])
  end

  private
  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id,weblog_id: params[:weblog_id])
  end
end
