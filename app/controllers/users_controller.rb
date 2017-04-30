class UsersController < ApplicationController

  def index
    @users = User.where("first_name ILIKE ? OR last_name ILIKE ? OR email ILIKE ? ", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")
                 .paginate(:page => params[:page], :per_page => 10)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to users_path
    else
      render 'edit'
    end
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
    @user.toggle!(:admin)
    redirect_to users_path, notice: "Zakutalizowano uprawnienia administratora."
  end

  def pracownik
    @user = User.find(params[:id])
    @user.toggle!(:ispracownik)
    redirect_to users_path, notice: "Zakutalizowano uprawnienia pracownika."
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :stanowisko_id, :dzial_id)
  end

end
