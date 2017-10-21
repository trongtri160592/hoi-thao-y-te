class EventController < ApplicationController
  def register
    @registrar = Registrar.new
  end

  def save
    @registrar = Registrar.new(registrar_params)
    if @registrar.save
      if I18n.locale == :vi
        flash[:success] = "Cảm ơn bạn đã đăng ký"
        redirect_to '/'
      else
        flash[:success] = "Thank you for registering"
        redirect_to '/en'
      end
    else
      render 'register'
    end
  end

  private
  def registrar_params
    params.require(:registrar).permit(:name, :birth, :nationality, :company, :job, :domain, :image, :cvs, :email, :phone, course_ids: [])
  end
end