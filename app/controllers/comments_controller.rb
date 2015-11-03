class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    @comment.post = @post

    if @comment.save
      redirect_to post_path(@post)
    else
      render 'posts/show'
    end

    if @comment.save
      respond_to do |format|
        format.html { redirect_to post_path(@post) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'posts/show' }
        format.js  # <-- idem
      end
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
