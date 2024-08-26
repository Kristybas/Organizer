class PagesController < ApplicationController
  def home
    @query = params[:query]
    @user_apps = current_user.user_apps
    @user_apps = @user_apps.joins(:app).where("apps.name ILIKE ? or user_apps.rib ILIKE ? or user_apps.phone ILIKE ? or user_apps.address ILIKE ? or user_apps.email ILIKE ? ", "%#{@query}%","%#{@query}%","%#{@query}%","%#{@query}%","%#{@query}%") if @query.present?

  end


end
