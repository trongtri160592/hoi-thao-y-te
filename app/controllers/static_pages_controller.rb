class StaticPagesController < ApplicationController
  def home
    @contents = Content.all
  end

  def help

  end

  def contact
  end

  def about
  end

end