class CreateTeamProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :team_projects do |t|
      t.integer :team_id
      t.integer :project_id

      t.timestamps
    end
  end
end
