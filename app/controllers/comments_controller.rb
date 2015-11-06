class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    puts "!!!!!!!!!!!!!!!!!!!!!"
    puts params.to_s
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
   # params.permit(comment: :content, :post_id)
    params.require(:comment).permit(:content, :post_id, :user_id)
  end
end
