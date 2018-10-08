class CreatePositions < ActiveRecord::Migration[5.0]
  def change
    create_table :positions do |t|
      t.string :latitud
      t.string :longitude

      t.timestamps
    end
  end
end
