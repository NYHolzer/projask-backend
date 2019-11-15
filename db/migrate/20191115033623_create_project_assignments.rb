class CreateProjectAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :project_assignments do |t|
      t.string :project_id
      t.string :assigned_to

      t.timestamps
    end
  end
end
