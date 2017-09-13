class StaticPagesController < ApplicationController
  def home
    @contents = Content.all
    @sponsors = Sponsor.all
  end

  def help

  end

  def contact
  end

  def about
  end

end