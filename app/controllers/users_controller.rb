class UsersController < ApplicationController
  def change_theme
    current_user.update(theme: params[:theme])
    redirect_back(fallback_location: root_path)
  end

  def role?(role)
    roles.any? { |r| r.name.underscore.to_sym == role }
  end
end
