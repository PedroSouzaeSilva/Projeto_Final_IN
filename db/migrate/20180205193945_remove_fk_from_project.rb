class RemoveFkFromProject < ActiveRecord::Migration[5.1]
  def change
    remove_column :projects, :user_manager_id
    remove_column :projects, :user_pmo_id

  end
end
