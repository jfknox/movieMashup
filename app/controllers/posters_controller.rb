class PostersController < ApplicationController
  
  def index
  	@posters = Poster.all
  end

  def new

  end

  def edit
  	@poster = Poster.find params[:id]
  end

  def create
  	@poster = current_user.posters.new(poster_params)
		if poster.save
			redirect_to poster_path
		else
      		render :action => 'new'
    end
  end

  def show
  	poster = Poster.find params[:id]
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
			params.require(:poster).permit(:title1, :title2, :mash_title, :content, :uid)
		end

	end
