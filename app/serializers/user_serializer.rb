class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username, :work_email, :gmail_email

  attribute :myTasks do |user|
    user.tasks
  end 

  attribute :users do |user| 
      users = User.all.map {|u| "#{u.id}, #{u.name}"}
  end
  # has_many :project_assignments
  # has_many :projects, through: :project_assignments

  # has_many :task_assignments
  # has_many :tasks, through: :task_assignments

  # has_many :assignee_tasks, foreign_key: :assigned_by, class_name: "Task"
end
