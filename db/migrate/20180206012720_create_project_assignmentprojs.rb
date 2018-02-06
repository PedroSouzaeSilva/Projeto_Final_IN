class CreateProjectAssignmentprojs < ActiveRecord::Migration[5.1]
  def change
    create_table :project_assignmentprojs do |t|
      t.integer :project_id
      t.integer :assignmentproj_id

      t.timestamps
    end
  end
end
