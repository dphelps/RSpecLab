class Movie
	attr_accessor :title, :rating, :runtime

	def initialize(title="", rating="", runtime=0)
		@title = title
		@rating = rating
		@runtime = runtime
		@reviews = []
	end

	def add_review(review)
		@reviews << review
	end

	def get_reviews()
		@reviews
	end

	def get_rating()
		if @reviews.length > 0 then
			n = 0
			total_stars = 0
			avg_stars = 0
			@reviews.each do |review|
				total_stars += review.stars 
				n += 1
			end
			avg_stars = total_stars/n
			return(avg_stars)
		else
			return(0)
		end
	end

end