class SessionsController < ApplicationController

    def new
    end
    
    def create
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:username] = @user.username
            session[:user_id] = @user.id
            redirect_to @user
        else
            flash[:notice] = 'Wrong Username or Password'
            redirect_to '/login'
        end
    end

    def destroy 
        session.clear
        redirect_to '/login'
    end

end 
