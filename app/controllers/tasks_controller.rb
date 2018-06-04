class TasksController < ApplicationController
  include CommonUtils
  before_action :load_resource

  def index; end

  def show; end

  def new
    @task = Task.new
  end

  def create
    return if require_valid_params(@task)
    if @task.save!
      redirect_to @task, success: ['task created']
    end
  end

  def edit; end

  def update
    @task.attributes = task_params
    return if require_valid_params(@task)
    @task.save
    redirect_to @task, success: ['task updated']
  end

  def destroy
    @task.destroy
    redirect_to tasks_url, success: ['task delete']
  end

  private

  def task_params
    params.require(:task).permit(
      :name, :body, :limits, :status, :priority
    )
  end

  def load_resource
    case params[:action].to_sym
      when :index
        @tasks = Task.all
      when :create
        @task = Task.new(task_params)
      when :show, :edit, :update, :destroy
        @task = Task.find(params[:id])
    end
  end
end
