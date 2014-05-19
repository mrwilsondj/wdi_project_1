class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :artist
      t.string :releases
      t.string :lables
      t.string :searching

      t.timestamps
    end
  end
end
