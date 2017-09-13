class SponsorsController < ApplicationController
  def index
    @sponsors = Sponsor.all
  end

  def create
    @sponsor = Sponsor.new(sponsor_param)
    if @sponsor.save
      flash[:success] = "Thêm nhà tài trợ #{@sponsor.name} thành công"
      redirect_to '/sponsors'
    else
      flash[:danger] = "Thêm nhà tài trợ thất bại"
      redirect_to '/sponsors'
    end
  end

  def destroy
    @sponsor = Sponsor.find_by_id(params[:id])
    if @sponsor
      @sponsor.destroy
      flash[:success] = "Xóa nhà tài trợ #{@sponsor.name} thành công"
      redirect_to '/sponsors'
    else
      flash[:error] = "Xóa nhà tài trợ thất bại"
      redirect_to '/sponsors'
    end
  end

  private
  def sponsor_param
    params.require(:sponsor).permit(:name, :logo)
  end

end