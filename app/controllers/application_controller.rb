class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  #include Pundit
  # after_action :verify_authorized, except: [:home, :public_posts], unless: :devise_controller?
  # # after_action :verify_authorized, except: :index, unless: :devise_controller?
  # after_action :verify_policy_scoped, only: :index, unless: :devise_controller?
  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  # def user_not_authorized
  #   flash[:alert] = "You are not authorized to perform this action."
  #   redirect_to(root_path)
  # end
  protected

  def after_sign_in_path_for(user)
   user_path(current_user.id)
  end

  def after_sign_out_path_for(user)
    root_path
  end
end
