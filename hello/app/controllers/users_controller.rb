class UsersController < ApplicationController
before_filter :check_current_user, only: [:show, :update]

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @post.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def edit
    @user = User.find(params[:id])
  end



  private

  def user_params
    params.require(:user).permit(current_user)
  end

  def check_current_user
    @user = User.find(params[:id])
    redirect_to user_path[:id] unless current_user == @user
  end
end
