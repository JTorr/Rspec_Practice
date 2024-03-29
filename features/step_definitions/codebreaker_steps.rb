class Output
  def messages
    @messages ||= []
  end

  def puts(message)
    messages << message
  end
end

def output
  output ||= Output.new
end



Given(/^I am not yet playing$/) do
end

When(/^I start a new game$/) do
  game = CodeBreaker::Game.new(output)
  game.start
end

Then(/^I should see "([^"]*)"$/) do |message|
  expect(output.messages).to include(message)
end

# Given(/^the secret code is "(.*?)"$/) do |arg1|
#   pending # express the regexp above with the code you wish you had
# end
#
# When(/^I guess "(.*?)"$/) do |arg1|
#   pending # express the regexp above with the code you wish you had
# end
#
# Then(/^the mark should be "(.*?)"$/) do |arg1|
#   pending # express the regexp above with the code you wish you had
# end
