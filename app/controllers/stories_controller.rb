class StoriesController < ApplicationController
	helper_method :sort_column, :sort_direction


	def index
		@stories = Story.text_search(params[:query]).order(sort_column + " " + sort_direction).find_with_reputation(:votes, :all, order: "votes desc")
		@poster_call = HTTParty.get("http://api.rottentomatoes.com/api/public/v1.0/lists/movies/box_office.json?apikey=2dua5msv326ykbsw2crqbjf6&limit=10")
		@poster_call2 = HTTParty.get("http://api.rottentomatoes.com/api/public/v1.0/lists/dvds/top_rentals.json?apikey=2dua5msv326ykbsw2crqbjf6&limit=10")
  	@asc = "http://www.clipartbest.com/cliparts/nTX/EGB/nTXEGBLTB.png"
		@desc = "http://upload.wikimedia.org/wikipedia/en/e/e0/Black_Down_Arrow.png"
		@poster1 = @poster_call['movies'].sample
    @poster2 = @poster_call2['movies'].sample
    @story = Story.new
end


    def total_votes

    	
    	@total_votes = reputation_for(@story)
    end
	

  def vote
    value = params[:type] == "up" ? 1 : -1
    @story = Story.find(params[:id])
    @story.add_or_update_evaluation(:votes, value, current_user)
    redirect_to :back
  end

  def total
  	@total = reputation_for(@story)
  end

	def show
	  @story = Story.find(params[:id])
	  @commentable = @story
	  @comments = @commentable.comments
	  @comment = Comment.new
	end

	def new	 
		@story = Story.new 
		
  	end

	def create
		@story = current_user.stories.new(story_params)

		if @story.save
			@stories = Story.all
			redirect_to @story
		else
			redirect_to "new"
		end
	end

	def edit
		@story = Story.find(params[:id])
	end

	def update
		@story = Story.find(params[:id])
		if @story.update_attributes(story_params)
			redirect_to @story
		else
			render "edit"
		end
	end

	def destroy
		@story = Story.find(params[:id])
		@story.destroy
		redirect_to current_user
	end

	private
		def story_params
			params.require(:story).permit(:title1, :title2, :mash_title, :content, :user_id, :total_votes)
    end

    	def sort_column
			Story.column_names.include?(params[:sort]) ? params[:sort] : "mash_title"
		end

		def sort_direction
			%w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
		end

end
