class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
  end

  private

  def comment_params
   # params.permit(comment: :content, :post_id)
    params.require(:comment).permit(:content, :post_id, :user_id)
  end
end
