class TasksController < ApplicationController
  before_action :authenticate_user!
  def index
    @tasks = Task.all
    @user = current_user
    #@ready = Ready.new(task: @task, user: current_user)
    #@ready = Ready.all.where(state: true)
    @ready = Ready.all.where(user_id: current_user)
  end

  def show
    @task = Task.find(params[:id])
  end
end
