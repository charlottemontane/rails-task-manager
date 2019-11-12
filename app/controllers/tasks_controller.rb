class TasksController < ApplicationController
    def index
        @tasks = Task.all
    end
    def show
        @task = Task.find(params[:id])
      end

      def new
        @Task = Task.new
      end

      def create
        task = Task.new(params_task)
        task.save
        redirect_to tasks_path(task)
      end

      def edit
        @task = Task.find(params[:id])
        @tasks.add
      end

      def update
        @task = Task.find(params[:id])
        @task.update
      end

      def destroy
        @task = Tasks.find(params[:id])
        @task.destroy
      end

end
