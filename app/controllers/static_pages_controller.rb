class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @feed_items = current_user.feed.paginate(page: params[:page])
      @micropost = current_user.microposts.build if logged_in?
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
