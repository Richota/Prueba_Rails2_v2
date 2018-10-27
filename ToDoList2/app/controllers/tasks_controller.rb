class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @user = current_user
    @ready = @ready = Ready.new(task: @task, user: current_user)
  end

  def method_name
    @task = Task.find(params[:id])
  end
end
