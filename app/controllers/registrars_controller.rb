class RegistrarsController < ApplicationController
  before_action :authorize

  def index
	@registrars = Registrar.all
  end
  
end