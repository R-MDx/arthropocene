class UsersController < ApplicationController
  def show
    @user = User.find(current_user[:id])
    @post = Post.new
  end
end
