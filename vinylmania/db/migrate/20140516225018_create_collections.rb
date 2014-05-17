class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      # int(id) gets made automatically
      t.string      :title
      t.string      :album
      t.string      :release
      t.text        :content

      # this must be called 'relation_id'
      t.integer     :cookbook_id

      t.timestamps
    end
  end
end
