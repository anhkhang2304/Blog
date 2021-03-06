class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @micropost  = current_user.microposts.build
      @entry  = current_user.microposts.build
      @comment  = Comment.new
      @feed_items = current_user.feed.paginate page: params[:page], per_page: 10
    else
      @micropost  = Micropost.new
      @entry = Micropost.new
      @feed_items = Micropost.all.paginate page: params[:page], per_page: 10
    end
  end

  def help
  end

  def about
  end
end
