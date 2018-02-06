class CreateUserAssignmentprojs < ActiveRecord::Migration[5.1]
  def change
    create_table :user_assignmentprojs do |t|
      t.integer :user_id
      t.integer :assignmentproj_id

      t.timestamps
    end
  end
end
