class TasksController < ApplicationController
  before_action :authenticate_user!

  def index
    @tasks = Task.all
    @readies = Ready.all
    # @ready = Ready.(task: task, user: current_user)
    #@ready = Task.exist?(user_id: current_user.id)
  end

  def show
    @task = Task.find(params[:id])
    @users = User.all
  end
end
