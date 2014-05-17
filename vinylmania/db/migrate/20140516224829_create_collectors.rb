class CreateCollectors < ActiveRecord::Migration
  def change
    create_table :collectors do |t|
      # int(id) gets made automatically
      t.string    :name
      t.string    :email
      t.text      :bio

      t.timestamps
    end
  end
end
