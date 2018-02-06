class AddDirToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :dir, :boolean
  end
end
