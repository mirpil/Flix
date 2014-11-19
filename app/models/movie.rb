class Movie < ActiveRecord::Base

#validations

	validates :title, :mpaa_rating, :runtime, :poster_image, presence: true
	validates :runtime, numericality: true
	validate :mpaa_rating_must_be_in_list

#associations	

	has_many :cast_members
	belongs_to :genre

	scope :with_placement, -> (placement) { where(placement: placement)}
	

	def runtime_hours
	unless runtime.nil?
		"#{runtime / 60} hrs. #{runtime % 60} min."
	end
	end

	def self.all_mpaa_ratings
		[["G", "G"], ["PG", "PG"], ["R", "R"], ["Not Rated", "NR"]]
	end
	def cast
			cast_members.collect { |cast_member| cast_member.name }.join(", ") unless cast_members.nil?
		end

private
	def mpaa_rating_must_be_in_list
		all_ratings = Movie.all_mpaa_ratings.collect { |rating| rating[1]}
		unless all_ratings.include? mpaa_rating
			errors.add(:mpaa_rating, "must be a valid MPAA rating.")
		end
	end
end