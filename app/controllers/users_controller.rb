class UsersController < ApplicationController
  def show
    @user = current_user
    render "pages/profile"
  end
end
