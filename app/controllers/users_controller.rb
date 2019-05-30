class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def new
        @users = User.new
    end

    def show
        @users = User.find(params[:id])
    end

    def create
        @users = User.create(user_params)
        if @users
            redirect_to @users
        else 
            redirect_to :new
        end
    end


    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
        
end
