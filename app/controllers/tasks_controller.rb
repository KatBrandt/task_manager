class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new

  end

  def create
    Task.create(task_params)

    redirect_to '/tasks'
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.update(task_params)
    task.save
    redirect_to "/tasks"
  end

  def destroy
    Task.destroy(params[:id])
    redirect_to '/tasks'
  end

  private
  def task_params
    params.permit(:title, :description)
  end
end
