class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @id = params[:id]
    if (params[:instruction] == "asf")
      1/0
    end
  end

  def home
    @user = current_user
  end

  def comments
    @user = User.find(params[:id])
  end
end
