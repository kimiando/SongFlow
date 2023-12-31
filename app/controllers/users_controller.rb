class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # p @user
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)

    redirect_to user_homepage_index_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :user_name, :description, :photo)
  end
end
