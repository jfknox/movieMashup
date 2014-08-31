class AddVoteColumnToStoriesModel < ActiveRecord::Migration
  def change
  	add_column :stories, :votes, :integer
  end
end
