class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new  # <-- You need this now.
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end
end

