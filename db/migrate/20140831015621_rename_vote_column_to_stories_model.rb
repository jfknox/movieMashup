class RenameVoteColumnToStoriesModel < ActiveRecord::Migration
  def change
  	rename_column :stories, :votes, :vote_total
  end
end
