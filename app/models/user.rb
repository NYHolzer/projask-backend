class User < ApplicationRecord
    has_secure_password

    has_many :project_assignments
    has_many :projects, through: :project_assignments

    has_many :task_assignments
    has_many :tasks, through: :task_assignments

    has_many :assignee_tasks, foreign_key: :assigned_by, class_name: "Task"

    validates :name, :username, :work_email, presence: true
    validates :name, uniqueness: true
end
