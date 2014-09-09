require 'spec_helper'

describe "Review" do
	before :each do
		@review = Review.new
	end

	it "Instantiates a generic review" do
		expect(@review).to be_instance_of Review
	end

	it "Has getter and setter methods for content" do
		@review.content = "Test"
		expect(@review.content).to eq "Test"
	end

	it "Has getter and setter methods for number of stars" do
		@review.stars = 5
		expect(@review.stars).to eq 5
	end
end