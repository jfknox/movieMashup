class Story < ActiveRecord::Base
  belongs_to :user
  has_many :comments, as: :commentable, dependent: :destroy 


  
	def self.search(search)
    if search
      #case insensitive
      where('mash_title @@ ?', search)

    else
      all
    end 
  end
end
  