class ReadiesController < ApplicationController
  before_action :authenticate_user!

  def create

    @task = Task.find(params[:task_id])
    @ready = Ready.new(task: @task, user: current_user)
    @ready.state = !@ready.state
    if @ready.save
      redirect_to root_path, notice: 'El estado ha sido cambiado'
    else
      redirect_to root_path, alert: 'NO se ha cambiado el estado!'
    end
  end

  def destroy
    @ready = Ready.destroy(params[:id])
    redirect_to root_path
  end
end
