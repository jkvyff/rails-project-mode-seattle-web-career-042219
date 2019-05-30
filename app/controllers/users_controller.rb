class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def show
        @user = User.find(params[:id])
    end

    def create
        @user = User.create(user_params)
        if @user
            redirect_to @user
        else 
            redirect_to :new
        end
    end


    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
        
end
