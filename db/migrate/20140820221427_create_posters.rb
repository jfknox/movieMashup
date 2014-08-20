class CreatePosters < ActiveRecord::Migration
  def change
    create_table :posters do |t|
      t.string :image_url
      t.references :user_uid, index: true
      t.string :blurb
      t.string :title1
      t.string :title2
      t.string :mash_title

      t.timestamps
    end
  end
end
