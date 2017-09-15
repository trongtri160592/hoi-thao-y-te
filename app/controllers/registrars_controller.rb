class RegistrarsController < ApplicationController
  before_action :authorize

  def index
    @registrars = Registrar.all.paginate(page: params[:page], per_page: 20)
  end

end