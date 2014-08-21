class ChangeUserIdIdInPosters < ActiveRecord::Migration
  def change
  	rename_column :posters, :user_uid_id, :user_uid
  end
end
