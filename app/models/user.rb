class User < ApplicationRecord
    has_secure_password

    has_many :project_assignments
    has_many :projects, through: :project_assignments

    has_many :task_assignments
    has_many :tasks, through: :task_assignments
end
