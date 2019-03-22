class RegistrationsController < Devise::RegistrationsController

private

    def sign_up_params
        params.require(:user).permit(:email, :username, :password, :password_confirmation, :photo)
    end

    def account_update_params
        params.require(:user).permit(:email, :username, :password, :password_confirmation, :photo, :current_password)
    end
end

