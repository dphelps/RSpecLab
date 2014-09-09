require 'spec_helper'

describe "Movie" do 
	it "Instantiates a generic Movie Object" do
		@movie = Movie.new
		expect(@movie).to be_instance_of Movie
	end	

	it "should have setter and getter methods for title" do
		@movie = Movie.new
		@movie.title = "Title"
		expect(@movie.title).to eq 'Title'
	end

	it "should have setter and getter methods for rating" do
		@movie = Movie.new
		@movie.rating = "R"
		expect(@movie.rating).to eq 'R'
	end

	it "should have setter and getter methods for runtime" do
		@movie = Movie.new
		@movie.runtime = 120
		expect(@movie.runtime).to eq 120
	end
end