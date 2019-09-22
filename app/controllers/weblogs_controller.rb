class WeblogsController < RankingController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_weblog, only: [:edit, :update, :show, :destroy]
  before_action :another_user?, only: :destroy

  def index
    @weblogs = Weblog.order("created_at DESC").page(params[:page]).per(8)
  end

  def new
    @weblog = Weblog.new
  end

  def create
    @weblog = Weblog.create(weblog_params.merge(viewed: 0))
    redirect_to root_path
  end

  def edit
    render "weblogs/new"
  end

  def update
    @weblog.update(weblog_params)
    redirect_to root_path
  end

  def show
    viewed = @weblog.viewed + 1
    @weblog.update(viewed: viewed)
    @comments = @weblog.comments.includes(:user)
    @comment = Comment.new
  end

  def destroy
    @weblog.destroy
    redirect_to root_path
  end

  private
  def set_weblog
    @weblog = Weblog.find(params[:id])
  end

  def weblog_params
    params.require(:weblog).permit(:title ,:content ,:image).merge(user_id: current_user.id)
  end

  def another_user?
    redirect_to root_path unless current_user&.id == @weblog.user.id
  end
end
