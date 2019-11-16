class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :assigned_by, :status_id, :dependent_task_id, :project_id, :created_at

end
