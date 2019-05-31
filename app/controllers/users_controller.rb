class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def show
        @user = User.find(params[:id])
        if session[:user_id] != @user.id
            redirect_to '/login'
        end
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:username] = @user.username
            redirect_to @user
        else
            flash[:warning] = "Enter Username and Password (6 or more characters)"
            redirect_to new_user_path
        end
    end


    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
        
end
