class PostsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @post = Post.new(post_params)
    @post.user = @user

    if @post.save
      redirect_to user_path(@user)
    else
      render 'users/show'
    end

    if @post.save
      respond_to do |format|
        format.html { redirect_to user_path(@user) }
        format.js  # <-- will render `app/views/posts/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'users/show' }
        format.js  # <-- idem
      end
    end
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end
end

