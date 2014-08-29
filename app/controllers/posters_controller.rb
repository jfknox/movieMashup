class PostersController < ApplicationController
  before_filter :empty_story, only: [:index, :show, :edit, :new]
  before_filter :empty_poster, only: [:index, :show, :edit, :new]

  helper_method :sort_column, :sort_direction
  

  def index
    @posters = Poster.text_search(params[:query])
  end


  def new
    @poster = Poster.new
  end

  def edit
  	@poster = Poster.find params[:id]
  end

  def create
    @poster = current_user.posters.new(poster_params)
    if @poster.save
      @posters = Poster.all
      redirect_to @poster
    else
      redirect_to "new"
    end
  end

  def show
  	@poster = Poster.find (params[:id])
    @commentable = @poster
    @comments = @commentable.comments
    @comment = Comment.new
  end

  def update
		@poster = Poster.find params[:id]
    	if @poster.update_attributes(poster_params)
       	   redirect_to poster_path
    	else
      	render :action => :edit
   		end
	end

	def destroy
		@poster = Poster.find params[:id]
    	@poster.destroy
    	redirect_to posters_path
  end

	private

		def poster_params
			params.require(:poster).permit(:title1, :title2, :mash_title, :blurb, :user_id, :image_url)
       end

	 

end
