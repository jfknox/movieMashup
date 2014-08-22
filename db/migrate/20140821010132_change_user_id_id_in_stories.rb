class ChangeUserIdIdInStories < ActiveRecord::Migration
  def change
  	rename_column :stories, :user_uid_id, :user_uid
  end
end
