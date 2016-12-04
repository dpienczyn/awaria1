class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    if @user.destroy
        redirect_to users_path, notice: "Użytkownik usunięty."
    end
  end

  def grantadmin
    @user = User.find(params[:id])
    user = User.find(@user.id)
    user.update_attribute(:admin, true)
    redirect_to users_path, notice: "Nadano uprawnienia administratora."
  end

  def denyadmin
    @user = User.find(params[:id])
    user = User.find(@user.id)
    user.update_attribute(:admin, false)
    redirect_to users_path, notice: "Odebrano uprawnienia administratora."
  end

end
