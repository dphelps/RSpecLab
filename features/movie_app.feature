Feature:  Run the app
  In order to run the movie app
  As a user
  I need to enter the right commands

Scenario: Starting the app
  When I start the app
  And examine the output
  Then I should see:
  """
  The movies we currently have in our system are:
  Movie Name			Movie Rating		Movie Length		Average stars
  ----------			------------		------------		-------------
  1. Secret Thriller			R			124			*****

  		Movie Review			Movie Rating
  		------------			------------
  		This was a great movie!		*****


  Welcome to the movie review application!
  Would you like to:
  1.  Add Movie
  2.  Add Review
  3.  Quit
  """

  Scenario: Adding a movie
  Given A running app
  When I type "1"
  And I type "The Shining"
  And I type "R"
  And I type "123"
  And examine the output
  Then the output should contain "1. Secret Thriller"
  And the output should contain "2. The Shining"

  Scenario:  Adding a review
  Given A running app
  When I type "2"
  And I type "1"
  And I type "The Worst Movie Ever!"
  And I type "1"
  And examine the output
  Then the output should contain "1. Secret Thriller"
  And the output should contain "The Worst Movie Ever!"
  And the output should contain "***"

  Scenario:  Choosing something besides 1..3
  Given A running app
  When I type "4"
  And examine the output
  Then the output should contain "I don't know what to do with that!"