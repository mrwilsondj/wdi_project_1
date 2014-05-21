class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :artist
      t.string :title
      t.string :label

      t.timestamps
    end
  end
end
