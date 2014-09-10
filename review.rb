class Review
	attr_accessor :content, :stars

	def initialize(content="", stars=0)
		@content=content
		@stars = stars
	end
end