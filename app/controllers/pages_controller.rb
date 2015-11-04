class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def public_posts
    @posts = Post.all
  end

  def profile
    @user = User.find(current_user[:id])
    @post = Post.new
  end

  def contact
  end

  def terms
  end

  def privacy
  end

end
