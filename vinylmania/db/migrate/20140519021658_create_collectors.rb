class CreateCollectors < ActiveRecord::Migration
  def change
    create_table :collectors do |t|
      t.string :name
      t.string :email
      t.string :hashed_password

      t.timestamps
    end
  end
end
