class Task < ApplicationRecord
    belongs_to :project
    has_many :task_assignments
    has_many :users, through: :task_assignments

    validates :title, :description, presence: true
end
