class EnglishesController < ApplicationController

  def index
    @english = English.all
  end



end
