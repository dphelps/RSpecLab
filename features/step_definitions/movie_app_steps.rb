When(/^I start the app$/) do
  run_interactive(unescape('ruby ../../movie_app.rb'))
end

Then(/^I should see:$/) do |expected|
  assert_partial_output(expected, all_output)
end

Given(/^A running app$/) do
  run_interactive(unescape('ruby ../../movie_app.rb'))
end

When(/^examine the output$/) do
  type("3")
end
