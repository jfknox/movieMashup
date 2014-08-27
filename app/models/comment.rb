class Comment < ActiveRecord::Base
  belongs_to :story
  belongs_to :poster
  belongs_to :user
end
