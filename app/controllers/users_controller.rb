class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def show
        find_params
        @character = Character.new
        flash[:user_id] = @user.id
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

    def edit
        find_params
        if session[:user_id] != @user.id
            redirect_to @user
        end
    end

    def update
        find_params
        if @user.authenticate(user_params[:password])
            @user.update(user_params)
            render @user
        else
            flash[:check] = "Provide a valid password"
            redirect_to edit_user_path
        end
    end


    private

    def user_params
        params.require(:user).permit(:username, :password)
    end

    def find_params
        @user = User.find(params[:id])
    end
        
end
