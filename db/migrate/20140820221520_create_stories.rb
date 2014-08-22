class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title1
      t.string :title2
      t.string :mash_title
      t.text :content
      t.references :user_uid, index: true

      t.timestamps
    end
  end
end
