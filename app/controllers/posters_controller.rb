class PostersController < ApplicationController
  helper_method :sort_column, :sort_direction, :current_user
  

  def index
    @posters = Poster.text_search(params[:query])
    @poster_call = HTTParty.get("http://api.rottentomatoes.com/api/public/v1.0/lists/movies/box_office.json?apikey=2dua5msv326ykbsw2crqbjf6&limit=10")
    @poster_call2 = HTTParty.get("http://api.rottentomatoes.com/api/public/v1.0/lists/dvds/top_rentals.json?apikey=2dua5msv326ykbsw2crqbjf6&limit=10")
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
  	@poster = Poster.find(params[:id])
    @commentable = @poster
    @comments = @commentable.comments
    @comment = Comment.new
  end

  def update
		@poster = Poster.find(params[:id])
    	if @poster.update_attributes(poster_params)
       	   redirect_to poster_path
    	else
      	render :action => :edit
   		end
	end

	def destroy
		@poster = Poster.find(params[:id])
    	@poster.destroy
    	redirect_to posters_path
  end

	private

		def poster_params
			params.require(:poster).permit(:title1, :title2, :mash_title, :blurb, :user_id, :image_url)
    end

	 

end
