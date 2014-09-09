require 'spec_helper'

describe "Movie" do 
	before :each do
		@movie = Movie.new
	end

	it "Instantiates a generic Movie Object" do
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