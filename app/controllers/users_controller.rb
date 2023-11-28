class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(name: params[:name], email: params[:email])
    @user.save
    render json: @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy!
    render json: @user
  end
end
