class UsersController < ApplicationController
  layout "profile_layout"

  def profile
    @user = current_user
  end
end
