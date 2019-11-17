class Api::V1::ProjectsController < ApplicationController
    before_action :set_project, only: [:show, :update, :destroy]

    def index 
        @projects = project
        projects_json = ProjectSerializer.new(@projects).serialized_json
        render json: projects_json
    end 

    # GET /api/v1/projects/1
    def show
        # render json: @user
        # json_string = MovieSerializer.new(movie).serialized_json
        project_json = ProjectSerializer.new(@project).serialized_json
        render json: project_json
    end

    private
    def set_project
        @project = project.find(params[:id])
    end
end
