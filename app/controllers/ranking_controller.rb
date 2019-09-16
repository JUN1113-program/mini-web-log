class RankingController < ApplicationController
  before_action :rank
  def rank
    @viewed_rank = Weblog.order("viewed DESC").limit(3)
    comment_nums = Comment.group(:weblog_id).order("count_weblog_id DESC").limit(3).count(:weblog_id).keys
    @comment_rank = comment_nums.map{|num| Weblog.find(num)}
    if Rails.env.production?
      @random_rank = Weblog.order("RANDOM()").limit(3)
    else
      @random_rank = Weblog.order("rand()").limit(3)
    end
  end
end
