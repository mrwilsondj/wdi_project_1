class CreateVinylRecords < ActiveRecord::Migration
  def change
    create_table :vinyl_records do |t|
      t.string :artist
      t.string :releases
      t.string :lables
      t.string :searching

      t.timestamps
    end
  end
end
