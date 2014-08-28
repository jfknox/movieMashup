class CommentsController < ApplicationController

	def index
		@comments = Comment.all
	end

	def show	
		@comment = Comment.find(params[:id])
	end

	def new	
		@comment = Comment.new
	end

	def create
		@comment = current_user.comments.new(comment_params)

		if @comment.save
			@comments = Comment.all
			redirect_to @comment
		else
			redirect_to "new"
		end
	end

	def edit
		@comment = Comment.find(params[:id])
	end

	def update
		@comment = Comment.find(params[:id])
		if @comment.update_attributes(comment_params)
			redirect_to @comment
		else
			render "edit"
		end
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		redirect_to comments_path
	end

	private
		def comment_params
			params.require(:comment).permit(:story_id, :poster_id, :content, :user_id)
		end

end

