class AddNewColumnsToComments < ActiveRecord::Migration
  def change
	remove_column :comments, :user_id
	remove_column :comments, :poster_id
	remove_column :comments, :story_id

	add_column :comments, :commentable_id, :integer
	add_column :comments, :commentable_type, :string

  end
end
