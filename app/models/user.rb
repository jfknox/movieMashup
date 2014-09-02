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

	
	has_reputation :posters, source: {reputation: :karma, of: :posters}, aggregated_by: :sum


	has_reputation :stories, source: {reputation: :votes, of: :stories}, aggregated_by: :sum


	def voted_for?(variable)
	  evaluations.where(target_type: variable.class, target_id: variable.id).present?
	end


end
