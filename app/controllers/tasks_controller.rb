class TasksController < ApplicationController
	def index
		@tasks = Task.all
	end

	def show
		
	end

	def new
		@task = Task.new
	end

	def edit
		
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
		
	end

	def destroy
		
	end

	private

	def task_params
		params.require(:task).permit(:body)
	end

end 