class CreateAssignmentprojs < ActiveRecord::Migration[5.1]
  def change
    create_table :assignmentprojs do |t|
      t.string :name
      t.text :description
      t.boolean :realized

      t.timestamps
    end
  end
end
