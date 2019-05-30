class ApplicationController < ActionController::Base
    def current_user
        @current_user ||= User.find(session[:username]) if session[:username]
    end

    helper_method :current_user

    def authorize
        redirect_to '/login' unless current_user
    end
end
