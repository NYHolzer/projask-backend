class Api::V1::TasksController < ApplicationController
    before_action :set_task, only: [:show, :update, :destroy]

    def index 
        @tasks = Task
        tasks_json = TaskSerializer.new(@tasks).serialized_json
        render json: tasks_json
    end 

    # GET /api/v1/tasks/1
    def show
        # render json: @user
        # json_string = MovieSerializer.new(movie).serialized_json
        task_json = TaskSerializer.new(@task).serialized_json
        render json: task_json
    end

    private
    def set_task
        @task = Task.find(params[:id])
    end
end
