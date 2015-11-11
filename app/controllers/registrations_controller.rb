class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    terms_of_use_path
  end
end
