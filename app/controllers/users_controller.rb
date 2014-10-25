class UsersController < ApplicationController



  def index

  end

  def new

  end

  def create

  end

  private
  def user_params
    params.require(:something).permit(:somevalue)
  end
end
