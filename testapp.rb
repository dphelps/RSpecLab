require_relative './movie'
require_relative './review'

@movies = []

@movie = Movie.new("Secret Thriller", "R", 124)
@review = Review.new("This was a great movie!", 5)
@movie.add_review(@review)

def get_display_stars(n)
	case n.round() 
	when 1
		return "*"
	when 2
		return  "**"
	when 3
		return  "***"
	when 4
		return "****"
	when 5
		return  "*****"
	when 0
		return "Not Reviewed"
	end
end

@movies << @movie
in_program = TRUE
while in_program do
	puts "The movies we currently have in our system are:"
	puts "Movie Name\t\t\tMovie Rating\t\tMovie Length\t\tAverage stars"
	puts "----------\t\t\t------------\t\t------------\t\t-------------"

	@movies.each do |movie|
		puts "#{movie.title}\t\t\t#{movie.rating}\t\t\t#{movie.runtime}\t\t\t#{get_display_stars(movie.get_rating)}"
		puts
		puts "\t\tMovie Review\t\t\tMovie Rating"
		puts "\t\t------------\t\t\t------------"

			movie.get_reviews.each do |review|
				puts "\t\t#{review.content}\t\t#{get_display_stars(review.stars)}"
			end
		puts
		puts 
	end


	puts "Welcome to the movie review application!"
	puts "Would you like to:"
	puts "1.  Add Movie"
	puts "2.  Add Review"
	puts "3.  Quit"
	choice = gets.chomp
	case choice
		when "1"
			puts "Please enter the name of a movie:"
			name = gets.chomp
			puts "Please enter the rating for \"#{name}\":"
			rating = gets.chomp
			puts "Please enter the number of minutes \"#{name}\" runs for:"
			minutes = gets.chomp
			@movies << Movie.new(name,rating,minutes)
		when "2"
			puts "in progress"
		when "3"
			exit()
		else
			puts "You entered \"#{choice}\".  I don't know what to do with that!"
	end
end
