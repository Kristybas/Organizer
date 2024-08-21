class AppsController < ApplicationController

  before_action :set_app, only: [:show, :edit, :update, :destroy]


  def index
    @apps = App.all
  end

  def show
  end

  def new
    @app = App.new
    @app.user = current_user
  end

  def create
    @app = App.new(app_params)
    if @app.save
      redirect_to @app, notice: 'App was successfully created.'
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
