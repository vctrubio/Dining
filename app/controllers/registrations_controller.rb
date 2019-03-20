class RegistrationsController < Devise::RegistrationsController

private

    def sign_up_params
        params.require(:user).permit(:email, :username, :password, :password_confirmation, :chef, :photo)
    end

    def account_update_params
        params.require(:user).permit(:email, :username, :password, :password_confirmation, :chef, :photo, :current_password)
    end
end

