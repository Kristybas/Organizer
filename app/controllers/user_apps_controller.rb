class UserAppsController < ApplicationController
  before_action :set_app, only: [:show, :edit, :update, :destroy]


  def index
    @apps = App.all
  end

  def show
  end

  def new
    @user_app = UserApp.new
  end

  def create
    @user_app = UserApp.new(user_app_params)
    if @user_app.save
      redirect_to @user_app, notice: 'UserApp was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @app.update(app_params)
      redirect_to @app, notice: 'App was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @app.destroy
    redirect_to apps_url, notice: 'App was successfully destroyed.'
  end

  private

  def set_app
    @app = App.find(params[:id])
  end

  def app_params
    params.require(:app).permit(:name, :description, :price, :category, :photo)
  end
end
