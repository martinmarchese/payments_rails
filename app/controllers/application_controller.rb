class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  def admin_reset_password_form
    render :template => "admin/resetPassword"
  end

  def admin_reset_password_do
    @user = User.find(params[:user_id])
    @newPassword = rand.to_s[2..6]
    @user.password = @newPassword
    @user.password_confirmation = @newPassword
    @user.update_attribute(:is_password_change_required, 'true')
    @user.save
    redirect_to "/admin/passwordReset", alert: "La Password para " + @user.username + " es: " + @newPassword + "."
  end

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
