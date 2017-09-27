class ContentsController < ApplicationController
  def edit
    redirect_to '/admin' unless current_user
    @content = Content.find(params[:id])
  end

  def update
    redirect_to '/admin' unless current_user
    @content = Content.find(params[:id])
    if @content.update_attributes(content_params)
      flash[:success] = "Bạn đã sửa đổi mục #{@content.title} thành công"
      render 'edit'
    else
      flash[:danger] = "Bạn đã sửa đổi mục #{@content.title} thất bại"
      render 'edit'
    end
  end

  def new
    redirect_to '/admin' unless current_user
    @content = Content.new
  end

  def create
    redirect_to '/admin' unless current_user
    if (params[:has_subcontent].nil?)
      @content = Content.new(content_params)
      if @content.save
        redirect_to '/quan-ly', notice: "#{@content.title} has been uploaded."
      else
        render 'new'
      end
    else
      @content = Content.new(content_params)
      if @content.save
        redirect_to "/contents/#{@content.id}/new", notice: "#{@content.title} has been uploaded."
      else
        render 'new'
      end
    end
  end

  def new_subcontent
    @content = Content.find_by_id(params[:content_id])
    @subcontent = SubContent.new
  end

  def add_subcontent
    @subcontent = SubContent.new(subcontent_params)
    if @subcontent.save
      redirect_to "/contents/edit/#{@subcontent.content_id}"
    else
      @content = Content.find_by_id(params[:content_id])
      render 'new_subcontent'
    end
  end

  def edit_subcontent
    redirect_to '/admin' unless current_user
    @subcontent = SubContent.find_by_id(params[:id])
  end

  def update_subcontent
    redirect_to '/admin' unless current_user
    @subcontent = SubContent.find(params[:id])
    content_id = @subcontent.content_id
    if @subcontent.update_attributes(subcontent_params)
      flash[:success] = "Bạn đã sửa đổi mục #{@subcontent.title} thành công"
      redirect_to "/contents/edit/#{content_id}"
    else
      flash[:danger] = "Bạn đã sửa đổi mục #{@subcontent.title} thất bại"
      redirect_to "/contents/edit/#{content_id}"
    end
  end

  def destroy_subcontent
    redirect_to '/admin' unless current_user
    @subcontent = SubContent.find_by_id(params[:id])
    if @subcontent
      content_id = @subcontent.content_id
      @subcontent.destroy
      redirect_to "/contents/edit/#{content_id}"
    else
      redirect_to '/'
    end
  end

  def show_subcontent
    @subcontent = SubContent.find_by_id(params[:id])
    @content = @subcontent.parent
  end

  def destroy
    redirect_to '/admin' unless current_user
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
    @news = News.first
  end

  private
  def content_params
    params.require(:content).permit(:title, :english_title, :image, :content, :english_content)
  end

  def subcontent_params
    params.require(:sub_content).permit(:title, :english_title, :content, :english_content, :content_id)
  end
end