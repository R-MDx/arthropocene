class PostsController < ApplicationController
  def create
    @user = current_user
    @post = Post.new(post_params)
    @post.user = @user
    if @post.save
      flash[:notice] = "Post saved successfully"
      redirect_to posts_path
    end
    # if @post.save
    #   respond_to do |format|
    #     format.html { redirect_to user_path(@user) }
    #     format.js  # <-- will render `app/views/posts/create.js.erb`
    #   end
    # else
    #   respond_to do |format|
    #     format.html { render 'users/show' }
    #     format.js  # <-- idem
    #   end
    # end
  end

  def index
    @user = current_user
    @post = Post.new
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

