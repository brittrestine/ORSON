module MoviesHelper
		def average_rating(movie_id)
			reviews = Review.where(movie: movie_id)
			total_reviews = reviews.count 
			count_total = 0
			reviews.each do |review|
				count_total += review.rating
			end
			average_rating = count_total/total_reviews
	end
end
