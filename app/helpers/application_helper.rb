module ApplicationHelper

  	def empty_story
    	@story = Story.new
    end

    def empty_poster
    	@poster = Poster.new
    end

    def empty_comment
    	@comment = Comment.new
    end
	
end
