class CreateCollectors < ActiveRecord::Migration
  def change
    create_table :collectors do |t|
      # int(id) gets made automatically
      t.string    :name
      t.text      :bio
      t.string    :email

      t.timestamps
    end
  end
end
