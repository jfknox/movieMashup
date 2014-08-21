class ChangePosterIdIdInComments < ActiveRecord::Migration
  def change
  	rename_column :comments, :poster_id_id, :poster_id
  end
end
