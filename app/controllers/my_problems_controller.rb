class MyProblemsController < ApplicationController

  def index
    @problems = MyProblem.all
  end

  def new
    @my_problem = MyProblem.new
  end

  def show
  end

  def create
    @my_problem = MyProblem.create(problem_params)
    if @my_problem.valid?
      @my_problem.save
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def problem_params
    params.require(:my_problem).permit(:question, :answer, :image).merge(user_id: current_user.id)
  end
end


