class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def display
    @task = Task.find(params[:id])
    if @task.completed
      @result = "completed"
    else
      @result = "not completed yet"
    end
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    redirect_to displayit_path(@task)
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end
