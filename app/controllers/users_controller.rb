class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Đã thêm người dùng thành công!"
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end