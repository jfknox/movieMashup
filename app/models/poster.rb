class Poster < ActiveRecord::Base
  belongs_to :user
  has_many :comments, as: :commentable, dependent: :destroy



  def self.text_search(query)
    if query
      basic_search(query)
    else
      all
    end
  end


  	has_reputation :votes, source: :user, aggregated_by: :sum

	



end
 