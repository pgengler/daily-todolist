class TasksController < ApplicationController
	def create
		Task.create! task_params
		redirect_to new_task_path
	end

	private

	def task_params
		params.require(:task).permit(:summary)
	end
end
