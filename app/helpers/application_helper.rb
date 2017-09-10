module ApplicationHelper
  def user_theme
    current_user&.theme || User.themes.keys.first
  end
end
