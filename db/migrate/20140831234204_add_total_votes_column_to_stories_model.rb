class AddTotalVotesColumnToStoriesModel < ActiveRecord::Migration
  def change
  	add_column :stories, :total_votes, :integer
  end
end
