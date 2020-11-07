class EnglishesController < ApplicationController
  before_action :authenticate_user!

  def index
    @english = English.all
  end

  def new
    @english = English.new
  end

  def create
    @english = English.create(english_params)
    if @english.valid?
      @english.save
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def english_params
    params.require(:english).permit(:question, :answer).merge(user_id: current_user.id)
  end

end
