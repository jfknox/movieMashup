 class CommentsController < ApplicationController
 before_filter :load_commentable
  
  def index
    @comments = @commentable.comments
  end

	def show	
		@comment = Comment.find(params[:id])
	end

	def new
  @comment = @commentable.comments.new
end
  
def create

  @comment = @commentable.comments.new(comment_params)
  if @comment.save
    redirect_to @commentable, notice: "Comment created."
  else
    render :new
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
		def load_commentable
    resource, id = request.path.split('/')[1,2]
    @commentable = resource.singularize.classify.constantize.find(id)
  end

end

