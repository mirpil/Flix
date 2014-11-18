class MoviesController < ApplicationController
	def about
	end

	def index
		@movies = Movie.all
	end

	def privacy
		render 'privacy_policy'
	end
end
