class PostsController < ApplicationController
  def create
    @user = current_user
    @post = Post.new(post_params)
    @post.user = @user

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

  def new
  end

  def index
    @user = current_user
  end

  def show
    @post = Post.find(current_user.posts[0].id)
    @comment = Comment.new
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :story)
  end
end

