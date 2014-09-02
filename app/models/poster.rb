class Poster < ActiveRecord::Base
  belongs_to :user
  has_many :comments, as: :commentable, dependent: :destroy

  validates :image_url, format: { with: /(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?/ }
  validates :user_id, presence: true
  validates :blurb, presence: true
  validates :title1, presence: true
  validates :title2, presence: true
  validates :mash_title, presence: true



  def self.text_search(query)
    if query
      basic_search(query)
    else
      all
    end
  end


  	has_reputation :karma, source: :user, aggregated_by: :sum

	



end
 