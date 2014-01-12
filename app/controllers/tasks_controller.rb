class TasksController < ApplicationController
	def create
		Task.create! task_params
		redirect_to new_task_path
	end

	def edit
		@task = Task.find(params[:id])
	end

	def index
		@tasks = Task.all
	end

	def new
		@task = Task.new
	end

	private

	def task_params
		params.require(:task).permit(:summary)
	end
end
