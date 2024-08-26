class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]


  # GET /users
  def index
    @user = current_user
    @different_address_apps = @user.je_demenage
  end

  # GET /users/:id
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  def je_demenage
    @user = current_user
    @different_address_apps = @user.user_apps.where.not(address: @user.address)
  end

  def rib
    @user = current_user
    @different_rib_apps = @user.user_apps.where.not(rib: @user.rib)
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  # GET /users/:id/edit
  def edit
    @user = current_user
  end

  # PATCH/PUT /users/:id
  def update
    if @user.update(user_params)
       redirect_to root_path, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /users/:id
  def destroy
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = current_user
  end

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:email, :first_name, :rib, :last_name, :phone, :address, :photo, :password, :password_confirmation)
  end
end
