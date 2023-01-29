class Api::AdminUsersController < ApplicationController
  skip_before_action :verify_authenticity_token, raise: false

  def index
    @admin_users = AdminUser.all
    render json: @admin_users
  end

  def show
    @admin_user = AdminUser.find(params[:id]) 
    render json: @admin_user
  end

  def create
    @admin_user = AdminUser.create(admin_user_params)  
    render json: @admin_user
  end

  def update
    @admin_user = AdminUser.find(params[:id])
    @admin_user.update(admin_user_params)

    render json: @admin_user
  end

  def destroy
    @admin_user = AdminUser.find(params[:id])
    @admin_user.destroy 
  end

  private

  def admin_user_params
    params.require(:admin_user).permit(:email, :password, :password_confirmation)
  end
end
