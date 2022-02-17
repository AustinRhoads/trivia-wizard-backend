class Api::V1::UsersController < ApplicationController

    def index
        @users = User.all

        if @users 

            render json: {
                status: 200,
                users: @users
            }

        else 
            render json: {
                status: 500, 
                errors: ['no users found']
            }

        end

    end

    def create 

        @user = User.new(new_user_params)
        #binding.pry
        if @user.save 
            render json: {
                status: 200,
                user: @user,
                created_success: true,
            }


        else
            render json: {
                status: 500,
                errors: ['this username is already taken.'],
            }

        end

    end

    def show

       @user = User.find(params[:id]) 

    end

    def update

    end

    def destroy

    end

    private

    def user_params 
        params.require(:user).permit(:username, :password, :password_confirmation, :email)
    end

    def new_user_params
        params.permit(:username, :password, :password_confirmation, :email)
    end

end