class PostersController < ApplicationController
  
  def index
  	@posters = Poster.all
  end


  def new
    @poster = Poster.new
  end

  def edit
  	@poster = Poster.find params[:id]
  end

  def create
    @poster = user.posters.new(poster_params)
    if @poster.save
      @posters = Poster.all
      redirect_to @poster
    else
      redirect_to "new"
    end
  end

  def show
  	@poster = Poster.find (params[:id])
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
			params.require(:poster).permit(:title1, :title2, :mash_title, :content, :user_id, :image_url)

	  end

end
