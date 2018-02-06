class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.string :name
      t.datetime :date_in
      t.datetime :deadline
      t.boolean :finalized

      t.timestamps
    end
  end
end
