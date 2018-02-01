class CreateOccupations < ActiveRecord::Migration[5.1]
  def change
    create_table :occupations do |t|
      t.string :name_occu

      t.timestamps
    end
  end
end
