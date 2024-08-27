class UsersController < ApplicationController
  before_action :set_user, only: [ :edit, :update]

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
