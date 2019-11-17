class ProjectSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :recurrence, :description, :deadline, :assigned_by

  has_many :tasks
  has_many :project_assignments
  has_many :users, through: :project_assignments
end
