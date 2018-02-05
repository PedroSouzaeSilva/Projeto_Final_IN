class RemoveTrelloFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :trello, :string
  end
end
