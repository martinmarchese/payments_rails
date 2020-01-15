class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  def admin_reset_password_form
    render :template => "admin/resetPassword"
  end

  #def admin_reset_password_do
  #  @user = User.find(params[:user_id])
  #  @user.password = params[:password]
  #  @user.password_confirmation = params[:password]
  #  @user.update_attribute(:is_password_change_required, 'false')
  #  @user.save
  #end

  protected
  def authenticate_admin!
    authenticate_user!
    redirect_to :payments_new, status: :forbidden unless current_user.admin?
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :is_password_change_required) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :current_password, :is_password_change_required) }
  end

end
