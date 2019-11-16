class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :assigned_by, :status_id, :dependent_task_id, :project_id, :created_at

  belongs_to :project
  has_many :task_assignments
  has_many :users, through: :task_assignments
end
