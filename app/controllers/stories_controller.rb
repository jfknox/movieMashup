class StoriesController < ApplicationController
	before_filter :empty_story, only: [:index, :show, :edit, :new]
	before_filter :empty_poster, only: [:index, :show, :edit, :new]
 
 	helper_method :sort_column, :sort_direction
 

	def index
		@stories = Story.search(params[:search]).order(sort_column + " " + sort_direction)
		@asc = "http://www.clipartbest.com/cliparts/nTX/EGB/nTXEGBLTB.png"
		@desc = "http://upload.wikimedia.org/wikipedia/en/e/e0/Black_Down_Arrow.png"
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
		redirect_to stories_path
	end

	private
		def story_params
			params.require(:story).permit(:title1, :title2, :mash_title, :content, :user_id)
    end


	def sort_column
		Story.column_names.include?(params[:sort]) ? params[:sort] : "mash_title"
	end

	def sort_direction
		%w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
	end

  end


