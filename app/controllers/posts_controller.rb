class PostsController < ApplicationController

  def index
    @posts = current_user.posts
    @comment = Comment.new
  end

  def new
    @post = Post.new
  end

  def create
    @user = current_user.posts.build(post_params)
    if @user.save
      flash[:notice] = "Post saved successfully"
      redirect_to user_posts_path
    else
      flash[:alert] = "No fields can be empty"
      redirect_to new_user_post_path(current_user.id)
    end
  end

  def edit
    @post = Post.find(params[:id])
    @user = current_user
  end

  def update
    @post = current_user.posts.find(params[:id])
    @post.update(post_params)
    redirect_to user_posts_path
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:alert] = "Post successfully an•ni•hi•lated!"
    redirect_to user_posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :story, :picture)
  end
end

