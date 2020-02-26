class UsersController < ApplicationController
before_filter :check_current_user, only: [:show, :update]

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def edit
    @user = current_user
  end



  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end

  def check_current_user
    @user = User.find(params[:id])
    redirect_to user_path(current_user) unless current_user == @user
  end
end
