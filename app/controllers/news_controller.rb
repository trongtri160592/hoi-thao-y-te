class NewsController < ApplicationController
  def index
    @news = News.first
  end

  def edit
    @news = News.first
    if @news # update news if it exists
      @news.update_attributes(news_params)
    else # create if it doesn't exist
      @news = News.new(news_params)
      @news.save
    end
    flash[:success] = "Bạn đã sửa đổi thành công"
    redirect_to '/news'
  end

  private
  def news_params
    params.require(:news).permit(:content, :english_content);
  end
end