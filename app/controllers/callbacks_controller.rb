class CallbacksController < Devise::OmniauthCallbacksController
    def social_login
        @user = User.from_omniauth(request.env["omniauth.auth"])
        sign_in_and_redirect @user
    end

    alias_method :facebook, :social_login
    alias_method :google_oauth2, :social_login
end