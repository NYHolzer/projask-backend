class ProjectSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :recurrence, :description, :deadline, :assigned_by
end
