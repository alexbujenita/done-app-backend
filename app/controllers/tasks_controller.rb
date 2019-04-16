class TasksController < ApplicationController
  def create

    task = Task.new(task_params)
    if task.save
      render json: task
    else
      render json: { error: 'Bad Request' }, status: 400
    end
  end

  def destroy
    if Task.find(params[:id]).destroy
      render json: {info: 'Task has been removed'}
    else
      render json: { error: 'Bad Request' }, status: 400
    end
  end

  private

  def task_params
    params.require(:task).permit(:completed, :content, :end_date, :priority, :user_id)
  end

end
