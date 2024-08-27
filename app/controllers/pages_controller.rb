class PagesController < ApplicationController
  before_action :authenticate_user!
  def home
    @user = current_user
    @query = params[:query]
    @user_apps = current_user.user_apps
    @user_apps = @user_apps.joins(:app).where("apps.name ILIKE ? or user_apps.rib NOT ILIKE ? or user_apps.phone NOT ILIKE ? or user_apps.address NOT ILIKE ? or user_apps.email NOT ILIKE ? ", "%#{@query}%","%#{@query}%","%#{@query}%","%#{@query}%","%#{@query}%") if @query.present?

  end


end
