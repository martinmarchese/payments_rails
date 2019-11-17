class ApplicationController < ActionController::Base
    protected
    def after_sign_in_path_for(resource)
      if current_user.sign_in_count == 1
        edit_user_password_path
      else
        root_path
      end
    end
    def authenticate_admin!
        authenticate_user!
        redirect_to :payments_new, status: :forbidden unless current_user.admin?
    end
end
