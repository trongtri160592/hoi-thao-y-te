class RegistrarsController < ApplicationController
  before_action :authorize

  def index
    @registrars = Registrar.all.paginate(page: params[:page], per_page: 20)
    @all_registrars = Registrar.all
    respond_to do |format|
      format.html
      format.xls
    end
  end
end