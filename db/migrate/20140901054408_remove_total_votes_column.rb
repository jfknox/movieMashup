class RemoveTotalVotesColumn < ActiveRecord::Migration
  def change
  	remove_column :stories, :vote_total

  end
end
