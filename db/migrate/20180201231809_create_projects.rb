class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.datetime :deadline
      t.float :price
      t.text :content

      t.timestamps
    end
  end
end
