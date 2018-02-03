class CreateUserDirections < ActiveRecord::Migration[5.1]
  def change
    create_table :user_directions do |t|
      t.integer :user_id
      t.integer :direction_id

      t.timestamps
    end
  end
end
