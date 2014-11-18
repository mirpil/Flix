class MoviesController < ApplicationController
	before_action :set_movie, only: [:show, :edit, :update]

	def about
	end

	def index
		@movies = Movie.all
	end

	def privacy
		render 'privacy_policy'
	end

	def show
	end

	def murder
		@movie = Movie.find(1)
		render 'show'
	end

	def new
		@movie = Movie.new
	end

	def create
			@movie = Movie.new(movie_params)
			if @movie.save
				redirect_to @movie, notice: 'Movie was created successfully.'
			else
				render action: 'new'
			end
	end

	def edit
	end

	def update
			@movie = Movie.new(movie_params)
		if @movie.update(movie_params)
			redirect_to @movie, notice: 'Movie was succesfully updated.'
		else
			render action: 'edit'
		end
	end

	private
	def set_movie
			@movie = Movie.find(params[:id])
	end

	def movie_params
		movie_params = params.require(:movie).permit(:title, :description, :has_subtitles, :placement, :mpaa_rating, :release_date, :ticket_price, :runtime, :poster_image, :director, :producer, :studio)
	end

end

