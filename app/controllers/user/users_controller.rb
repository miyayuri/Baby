class User::UsersController < ApplicationController

def show
    @user = User.find(params[:id])
end

def edit
end

def update
end

def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to new_user_session_path
end


end
