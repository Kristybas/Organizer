class PagesController < ApplicationController
  def home
    @user_apps = current_user.user_apps
  end
end
