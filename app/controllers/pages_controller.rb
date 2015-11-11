class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :public_posts, :contact, :terms, :privacy]

  def home
  end

  def public_posts
    @posts = Post.all
    @comment = Comment.new
  end

  def contact
  end

  def terms
  end

  def privacy
  end

end
