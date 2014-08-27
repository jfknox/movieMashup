class ChangeUidToId < ActiveRecord::Migration
  def change

    rename_column :posters, :user_uid, :user_id
    rename_column :stories, :user_uid, :user_id


  end
end
