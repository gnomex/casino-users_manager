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
      redirect_to root_path, notice: t("flash.users.create.notice")
    else
      flash[:alert] = t("flash.users.create.error")
      render :new
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to root_path, notice: t("flash.users.destroy.notice")
    else
      redirect_to root_path, alert: t("flash.users.destroy.error")
    end
  end

  def make_admin
    @user = User.find(params[:id])

    @user.make_admin!
    @user.save!

    render nothing: true
  end

  private
  def user_params
    params.require(:user).permit(:username, :fullname, :encrypted_password, :email, :role)
  end
end
