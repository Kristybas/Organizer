class UserAppsController < ApplicationController
  before_action :set_user_app, only: [:show, :edit, :update, :destroy]

  # GET /user_apps
  def index
    @user_apps = UserApp.all
  end

  # GET /user_apps/:id
  def show
  end

  # GET /user_apps/new
  def new
    @user_app = UserApp.new
  end

  # POST /user_apps
  def create
    @user_app = UserApp.new(user_app_params)
    @user_app.user = current_user
    if @user_app.save
      redirect_to @user_app, notice: 'UserApp was successfully created.'
    else
      render :new
    end
  end

  # GET /user_apps/:id/edit
  def edit
  end

  # PATCH/PUT /user_apps/:id
  def update
    if @user_app.update(user_app_params)
      redirect_to @user_app, notice: 'UserApp was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /user_apps/:id
  def destroy
    @user_app.destroy
    redirect_to user_apps_url, notice: 'UserApp was successfully destroyed.'
  end

  private

  # Méthode pour trouver l'objet UserApp en fonction de l'ID passé dans les paramètres
  def set_user_app
    @user_app = UserApp.find(params[:id])
  end

  # Méthode strong parameters pour permettre uniquement les attributs autorisés
  def user_app_params
    params.require(:user_app).permit(
      :user_id, :app_id, :phone, :address, :email,
      :date_prelevement, :date_renouvellement, :montant, :rib, :name
    )
  end
end
