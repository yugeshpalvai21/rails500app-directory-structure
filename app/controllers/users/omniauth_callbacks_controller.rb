class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
    def github
        @user = User.find_or_create_user(request.env["omniauth.auth"])
        if @user
            sign_in_and_redirect @user, notice: 'Logged In Successfully...'
        else
            redirect_to root_path, notice: 'Something Went Wrong, Please Try Again...'
        end
    end
end