require 'test_helper'

class SiteAdministrationTest < ActionDispatch::IntegrationTest
	test "add a new movie" do
		get '/movies/new'
		assert_response :success
		movie = { title: "Battlefield Earth", runtime: 118, mpaa_rating: "R", poster_image: "battlefield2x.jpg", release_date: "2000-05-12"}
		post_via_redirect "/movies", movie: movie
		assert_equal 3, Movie.count
		refute_nil Movie.find_by(title: "Battlefield Earth")
		assert_equal "Movie was created successfully.", flash[:notice]
		movie = assigns(:movie)
		refute_nil movie
		assert_equal "/movies/#{movie.id}", path
	end
end
