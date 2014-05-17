class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      # int(id) gets made automatically
      t.string    :title
      t.text      :description

      t.timestamps


      t.timestamps
    end
  end
end
