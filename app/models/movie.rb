class Movie < ActiveRecord::Base
	validates :title, :mpaa_rating, :runtime, :poster_image, presence: true
	validates :runtime, numericality: true
	validate :mpaa_rating_must_be_in_list
end

	private
	def mpaa_rating_must_be_in_list
		all_ratings = ["G", "PG", "R", "NR"]
		unless all_ratings.include? mpaa_rating
			errors.add(:mpaa_rating, "must be a valid MPAA rating.")
	end
end
