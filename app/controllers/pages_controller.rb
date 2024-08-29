class PagesController < ApplicationController
  before_action :authenticate_user!
  def home
    @query = params[:query]
    @user_apps = current_user.user_apps

    if @query.present?
      @user_apps = @user_apps.joins(:app).where("apps.name ILIKE ?", "%#{@query}%")
      # @user_apps = @user_apps.join(:app).where.not("user_apps.rib ILIKE ? or user_apps.phone ILIKE ? or user_apps.address ILIKE ? or user_apps.email ILIKE ? ", "%#{@query}%", "%#{@query}%", "%#{@query}%", "%#{@query}%")
      @user_apps = @user_apps.where.not("user_apps.phone ILIKE ?", "%#{@query}%")
    end


    @user_apps = @user_apps.map do |user_app|
      changes_count = 0
      if current_user
        changes_count += 1 if user_app.address.present? && user_app.address != current_user.address
        changes_count += 1 if user_app.email.present? && user_app.email != current_user.email
        changes_count += 1 if user_app.phone.present? && user_app.phone != current_user.phone
        changes_count += 1 if user_app.rib.present? && user_app.rib != current_user.rib
      end
      [user_app, changes_count]
    end

  end

end
