class ApplicationController < ActionController::Base
    protected
    def authenticate_admin!
      authenticate_user!
      redirect_to :payments_new, status: :forbidden unless current_user.admin?
    end
end
