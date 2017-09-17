class StaticPagesController < ApplicationController
  def home
    @contents = Content.all
    @sponsors = Sponsor.all
    @news = News.first
  end

  def help

  end

  def contact
  end

  def about
  end

end