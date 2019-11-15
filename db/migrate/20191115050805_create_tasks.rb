class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.string :assigned_by
      t.string :status_id
      t.string :dependent_task_id
      t.string :project_id
      
      t.timestamps
    end
  end
end
