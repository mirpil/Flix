require 'test_helper'

class MoviesControllerTest < ActionController::TestCase
  test "should display index page" do
  	get :index
  	assert_response :success
  	movies = assigns(:movies)
  	refute_nil movies
  	assert_equal 2, movies.count
  end
end
