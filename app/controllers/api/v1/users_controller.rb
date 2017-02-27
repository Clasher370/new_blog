class Api::V1::UsersController < ApplicationController

  before_action :authenticate, only: :index

  def index
    render json: User.all
  end

  def create
    @user = User.new user_params
    if @user.save
      render json: @user
    else
      render json: { 'errors': @user.errors.full_messages }
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email, :password)
  end
end

