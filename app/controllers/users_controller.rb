class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:notice] = t("flash.users.create.notice")
      redirect_to root_path
    else
      flash[:notice] = t("flash.users.create.error")
      render :new
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      flash[:notice] = t("flash.users.destroy.notice")
      redirect_to root_path
    else
      flash[:notice] = t("flash.users.destroy.error")
      render :show
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :fullname, :encrypted_password, :email)
  end
end
