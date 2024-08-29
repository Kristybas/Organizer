class PagesController < ApplicationController
  before_action :authenticate_user!
  def home
    @query = params[:query]
    @user = current_user
    @user_apps = current_user.user_apps

    if @query.present?
      @user_apps = @user_apps.joins(:app).where("apps.name ILIKE ?", "%#{@query}%")
      # @user_apps = @user_apps.join(:app).where.not("user_apps.rib ILIKE ? or user_apps.phone ILIKE ? or user_apps.address ILIKE ? or user_apps.email ILIKE ? ", "%#{@query}%", "%#{@query}%", "%#{@query}%", "%#{@query}%")
      @user_apps = @user_apps.where.not("user_apps.address ILIKE ?", "%#{@query}%")

    end
  end

end
