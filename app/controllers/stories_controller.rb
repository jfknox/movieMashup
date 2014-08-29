class StoriesController < ApplicationController
	before_filter :empty_story, only: [:index, :show, :edit, :new]
	before_filter :empty_poster, only: [:index, :show, :edit, :new]


	def index
		@stories = Story.all
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

  

  end


