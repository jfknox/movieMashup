class ChangeUserIdToUserName < ActiveRecord::Migration
  def change
  	change_column :comments, :user_id, :string
  	rename_column :comments, :user_id, :user_name
  end
end
