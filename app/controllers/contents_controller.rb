class ContentsController < ApplicationController
  before_action :authorize

  def edit
    @content = Content.find(params[:id])
  end

  def update
    @content = Content.find(params[:id])
    if @content.update_attributes(content_params)
      flash[:success] = "Bạn đã sửa đổi mục #{@content.title} thành công"
      redirect_to '/quan-ly'
    else
      flash[:danger] = "Bạn đã sửa đổi mục #{@content.title} thất bại"
      redirect_to '/quan-ly'
    end
  end

  def new
    @content = Content.new
  end

  def create
    @content = Content.new(content_params)
    if @content.save
      redirect_to '/quan-ly', notice: "#{@content.title} has been uploaded."
    else
      render 'new'
    end
  end

  def destroy
    @content = Content.find_by_id(params[:content_id])
    if @content
      @content.destroy
      redirect_to '/quan-ly'
    else
      redirect_to '/'
    end
  end

  def show
    @content = Content.find_by_id(params[:content_id])
    if !@content
      redirect_to '/'
    end
  end

  private
  def content_params
    params.require(:content).permit(:title, :image, :content)
  end
end