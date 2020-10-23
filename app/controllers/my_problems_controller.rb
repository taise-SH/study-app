class MyProblemsController < ApplicationController
  before_action :problem_params_id, only: [:edit, :update, :destroy]

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

  def edit
  end

  def update
    if @my_problem.update(problem_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @my_problem.destroy
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def problem_params
    params.require(:my_problem).permit(:question, :answer, :image).merge(user_id: current_user.id)
  end

  def problem_params_id
    @my_problem = MyProblem.find(params[:id])
  end
end


