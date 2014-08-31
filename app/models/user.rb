class User < ActiveRecord::Base
	has_many :stories
	has_many :posters
	has_many :comments
	def self.from_omniauth(auth)
	    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
		    user.provider = auth.provider
		    user.uid = auth.uid
		    user.info = auth
		    user.name = auth.info.name
		    user.oauth_token = auth.credentials.token
		    user.oauth_expires_at = Time.at(auth.credentials.expires_at)
		    user.save!
	 	end
	end


 


	has_many :evaluations, class_name: "RSEvaluation", as: :source

	has_reputation :votes, source: {reputation: :votes, of: :posters}, aggregated_by: :sum
	has_reputation :votes, source: {reputation: :votes, of: :stories}, aggregated_by: :sum

	def voted_for?(poster)
	  evaluations.where(target_type: poster.class, target_id: poster.id).present?
	end

	def voted_for?(story)
	  evaluations.where(target_type: story.class, target_id: story.id).present?
	end


end
