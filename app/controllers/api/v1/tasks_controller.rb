class TasksController < ApplicationController
    belongs_to :user
    belongs_to :task
end
