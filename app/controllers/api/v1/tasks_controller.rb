class Api::V1::TasksController < ApplicationController
    before_action :set_task, only: [:show, :update, :destroy]

    def index 
        @tasks = current_user.tasks
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

    def create 
        @task = current_user.tasks.build(task_params)
        if @task.save
            TaskAssignment.create(user_id: current_user.id, task_id: @task.id)
            render json: @task, status: :created
        else  
            resp = {
                error_resp: @task.errors.full_message.to_sentence
            }
            render json: error_resp, status: :unprocessable_entry
        end
    end

    def update
        if @task.update(task_params)
            render json: @task, status: :accepted
        else
          error_resp = {
            error: @task.errors.full_messages.to_sentence
          }
          render json: error_resp, status: :unprocessable_entity
        end
    end

    private
    def set_task
        @task = Task.find(params[:id])
    end

    def task_params
        params.require(:task).permit(:title, :description, :project_id)
    end
end
