class TasksController < ApplicationController
  before_action :authenticate_user!

  def index
    @tasks = Task.all
    @readies = Ready.all
  end

  def show
    @task = Task.find(params[:id])
    @users = User.all
  end
end
