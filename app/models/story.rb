class Story < ActiveRecord::Base
  belongs_to :user
  has_many :comments, as: :commentable, dependent: :destroy 
  
  validates :content, presence: true
  validates :user_id, presence: true
  validates :title1, presence: true
  validates :title2, presence: true
  validates :mash_title, presence: true
 
  
	def self.text_search(query)
	    if query
	       
	       search({mash_title: query, title1: query, title2: query, content: query}, false)
	    else
	      all
    	end 
    end
 
  has_reputation :votes, source: :user, aggregated_by: :sum

end
  