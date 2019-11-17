class PasswordsController < Devise::PasswordsController
    def edit
    end
  
    def update
      if current_user.update_with_password(user_params)
        flash[:notice] = 'password update succeed..'
        render :edit
      else
        flash[:error] = 'password update failed.'
        render :edit
      end
    end
  
    private
      def user_params
        params.require(:user).permit(:current_password, :password, :password_confirmation)
      end
  end