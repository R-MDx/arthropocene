class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)

    # if @comment.save
    #   redirect_to post_path(post.id)
    # else
    #   render 'posts/show'
    # end

    if @comment.save
      respond_to do |format|
        format.html { redirect_to post_path(post.id) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'posts/show' }
        format.js
      end
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
