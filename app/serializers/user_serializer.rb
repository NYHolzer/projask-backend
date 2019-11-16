class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username, :work_email, :gmail_email

  belongs_to :project
  has_many :task_assignments
  has_many :users, through: :task_assignments
end
