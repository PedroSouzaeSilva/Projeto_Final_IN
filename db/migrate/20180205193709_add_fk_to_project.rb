class AddFkToProject < ActiveRecord::Migration[5.1]
  def change
    add_reference :projects, :user_manager, foreign_key: true
    add_reference :projects, :user_pmo, foreign_key: true
  end
end
