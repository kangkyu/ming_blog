class UsersController < ApplicationController
  before_action :require_login, only: [:edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :user_name, :password, :password_confirmation)
  end
end
