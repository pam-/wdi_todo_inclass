class TasksController < ApplicationController
	def index
		@tasks = Task.all
	end

	def show
		@task = Task.find(params[:id])
	end

	def new
		@task = Task.new
	end

	def edit
		@task = Task.find(params[:id])
	end

	def create
		@task = Task.new(task_params)
		if @task.save
			redirect_to '/'
		else
			render :new
		end
	end

	def update
		@task = Task.find(params[:id])
		if @task.update(task_params)
			redirect_to '/'
		else
			redirect_to edit_task_path(@task)
		end 
	end

	def destroy
		@task = Task.find(params[:id])
		if @task.destroy
			redirect_to '/'
		else
			redirect_to task_path(@task)
		end
	end

	private

	def task_params
		params.require(:task).permit(:body)
	end
end 