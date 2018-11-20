class UsersController < ApplicationController
  layout "profile_layout"

  def profile
    @user = current_user
  end

  def show
    @user
  end

  def update
    @user.update(user_params)
    @user.save!
    redirect_to user_path(@user)
  end

  def destroy
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end
end
