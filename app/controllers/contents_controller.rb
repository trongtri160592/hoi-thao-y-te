class ContentsController < ApplicationController
  before_action :authorize

  def edit
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
    @content = Content.find(params[:id])
    @content.destroy
    redirect_to 'quan-ly'
  end

  private
  def content_params
    params.require(:content).permit(:title, :image, :content)
  end
end