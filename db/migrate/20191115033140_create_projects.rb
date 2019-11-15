class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :recurrence
      t.string :description
      t.string :deadline
      t.string :assigned_by
      
      t.timestamps
    end
  end
end
