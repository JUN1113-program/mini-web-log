class WeblogsController < RankingController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def index
    @weblogs = Weblog.order("created_at DESC")
  end

  def new
    @weblog = Weblog.new
  end

  def create
    @weblog = Weblog.create(weblog_params.merge(viewed: 0))
    
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
    viewed = @weblog.viewed + 1
    @weblog.update(viewed: viewed)
    @comments = @weblog.comments.includes(:user)
    @comment = Comment.new
  end

  def destroy
    @weblog = Weblog.find(params[:id])
    @weblog.destroy
    redirect_to root_path
  end

  private
  def weblog_params
    params.require(:weblog).permit(:title ,:content ,:image).merge(user_id: current_user.id)
  end
end
