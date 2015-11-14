class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :public_posts]

  def home
  end

  def public_posts
    @posts = Post.all
    @comment = Comment.new
  end
end
