class CreateProjectAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :project_assignments do |t|
      t.string :project_id
      t.string :user_id

      t.timestamps
    end
  end
end
