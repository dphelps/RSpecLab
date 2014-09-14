class MovieApp

require_relative './movie'
require_relative './review'

	def initialize(movie=Movie.new("Secret Thriller", "R", 124), review=Review.new("This was a great movie!", 5))
		@movies = []
		movie.add_review(review)
		@movies << movie
	end

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

	def display_header()
		puts "The movies we currently have in our system are:"
		puts "Movie Name\t\t\tMovie Rating\t\tMovie Length\t\tAverage stars"
		puts "----------\t\t\t------------\t\t------------\t\t-------------"
	end

	def list_movies(review=FALSE)
		i = 0
		@movies.each do |movie|
			i+=1
			puts "#{i}. #{movie.title}\t\t\t#{movie.rating}\t\t\t#{movie.runtime}\t\t\t#{get_display_stars(movie.get_rating)}"
			if review then
				puts
				puts "\t\tMovie Review\t\t\tMovie Rating"
				puts "\t\t------------\t\t\t------------"

					movie.get_reviews.each do |review|
						puts "\t\t#{review.content}\t\t#{get_display_stars(review.stars)}"
					end
				puts
				puts 
			end
		end
	end

	def list_movies_with_reviews()
		list_movies(TRUE)
	end

	def get_menu_choice()
		puts "Welcome to the movie review application!"
		puts "Would you like to:"
		puts "1.  Add Movie"
		puts "2.  Add Review"
		puts "3.  Quit"
		choice = gets.chomp
		return(choice)
	end

	def new_movie()
		puts "Please enter the name of a movie:"
		name = gets.chomp
		puts "Please enter the rating for \"#{name}\":"
		rating = gets.chomp
		puts "Please enter the number of minutes \"#{name}\" runs for:"
		minutes = gets.chomp
		@movies << Movie.new(name,rating,minutes)
	end

	def new_review()
		puts "Please choose the movie that you want to review:"
		list_movies()
		choice = gets.to_i
		choice -=1
		puts "Enter your review for '#{@movies[choice].title}':"
		review = gets.chomp
		puts "How many stars [1-5] would you rate it?"
		stars = gets.chomp
		@movies[choice].add_review(Review.new(review, stars.to_i))
	end

	def start()
		while TRUE do
			display_header()
			list_movies_with_reviews()
			@choice = get_menu_choice()
			case @choice
				when "1"
					new_movie()
				when "2"
					new_review()
				when "3"
					exit()
				else
					puts "You entered \"#{@choice}\".  I don't know what to do with that!"
			end
		end
	end
end

app = MovieApp.new()
app.start()