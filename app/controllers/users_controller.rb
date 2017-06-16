class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to "/users/1"
    else
      render 'new'
    end
  end
  
  private
    def user_params
      params.require(:user).permit(:name, :company_id)
    end
end

