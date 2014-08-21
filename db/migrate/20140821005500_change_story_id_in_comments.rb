class ChangeStoryIdInComments < ActiveRecord::Migration
  def change
  	rename_column :comments, :story_id_id, :story_id
  end
end
