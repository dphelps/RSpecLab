class Movie
	attr_accessor :title, :rating, :runtime

	def initialize(title="", rating="", runtime=0)
		@title = title
		@rating = rating
		@runtime = runtime
	end
end