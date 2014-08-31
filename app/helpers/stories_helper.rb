module StoriesHelper
 
	  	def vote_total
    	@vote_total = pluralize reputation_for(:votes).to_i
    	end
end

