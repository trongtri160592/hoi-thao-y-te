class EventController < ApplicationController
  def register
    @registrar = Registrar.new
  end

  def save
    @registrar = Registrar.new(registrar_params)
    if @registrar.save
      flash[:success] = "Cảm ơn bạn đã đăng ký"
      redirect_to '/'
    else
      render 'register'
    end
  end

  private
  def registrar_params
    params.require(:registrar).permit(:name, :birth, :nationality, :company, :job, :domain, :image, :cvs, :email, :phone)
  end
end