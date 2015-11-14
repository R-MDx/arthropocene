class UsersController < ApplicationController
  def show
    @comment = Comment.new
    render "pages/profile"
  end
end
