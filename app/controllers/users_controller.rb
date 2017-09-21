class UsersController < ApplicationController
  def change_theme
    current_user.update(theme: params[:theme])
    redirect_back(fallback_location: root_path)
  end

  def show
    @user = User.find(params[:id])
  end
end
