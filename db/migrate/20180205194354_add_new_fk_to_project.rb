class AddNewFkToProject < ActiveRecord::Migration[5.1]
  def change
    add_reference :projects, :user_manager
    add_reference :projects, :user_pmo
  end
end
