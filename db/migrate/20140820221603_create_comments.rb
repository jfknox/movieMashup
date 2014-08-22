class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.references :story_id, index: true
      t.references :poster_id, index: true

      t.timestamps
    end
  end
end
