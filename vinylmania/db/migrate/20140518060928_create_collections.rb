class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.integer :collector_id
      t.integer :vinyl_record_id

      t.timestamps
    end
  end
end
