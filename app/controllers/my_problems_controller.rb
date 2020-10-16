class MyProblemsController < ApplicationController

  def index
    @my_problem = My_problem.all
  end

  def new
  end

  def create
    @my_problem = My_problem.new(problem_params)
  end

  private

  def problem_params
    params.require(:my_problem).permit(:question, :answer, :image).merge(user_id: current_user.id)
  end
end


