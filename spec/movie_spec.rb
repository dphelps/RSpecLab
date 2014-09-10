require 'spec_helper'
require_relative '../review'

describe "Movie" do 
	describe "Instantiates generic Movie object" do
		before :each do
			@movie = Movie.new
		end

		it "creates a generic Movie Object" do
			expect(@movie).to be_instance_of Movie
		end	

		it "should have setter and getter methods for title" do
			@movie.title = "Title"
			expect(@movie.title).to eq 'Title'
		end

		it "should have setter and getter methods for rating" do
			@movie.rating = "R"
			expect(@movie.rating).to eq 'R'
		end

		it "should have setter and getter methods for runtime" do
			@movie.runtime = 120
			expect(@movie.runtime).to eq 120
		end
	end

	describe "Instantiates Movie object with values" do
		before :each do
			@movie = Movie.new("Movie Name", "PG", 122)
		end

		it "should create movie object with values" do			
			expect(@movie).to be_instance_of Movie
		end

		it "should have correct title" do
			expect(@movie.title).to eq "Movie Name"
		end

		it "should have correct rating" do
			expect(@movie.rating).to eq 'PG'
		end

		it "should have correct runtime" do
			expect(@movie.runtime).to eq 122
		end
	end

	describe "works with reviews" do
		before :each do
			@movie = Movie.new("Movie Name", "PG", 122)
			@review = Review.new("This was a great movie!", 5)
		end

		it "should be able to add review" do
			@movie.add_review(@review)
			expect(@movie.get_reviews).to include(@review)
		end

		it "should be able to get rating when there are reviews" do
			@movie.add_review(@review)
			@movie.add_review(Review.new("This was a horrible movie!", 1))
			expect(@movie.get_rating).to eq 3
		end

		it "should be able to get rating when there are no reviews" do
			expect(@movie.get_rating).to eq 0
		end
	end
end