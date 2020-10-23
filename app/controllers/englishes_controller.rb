class EnglishesController < ApplicationController

  def index
    @titl = English.select(:question)
  end

end
