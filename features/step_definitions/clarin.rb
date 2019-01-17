require 'watir'
require 'rspec'
require 'time'
require 'i18n'

Given("I go to https://www.clarin.com/") do
	@browser = Clarin.new(Watir::Browser.new)
	@browser.open_page
	sleep 10
end

And(/^I verify that "([^"]*)" is above the temperature$/) do |ciudad|
	(@browser.temperatura.preceding_sibling.text == ciudad).should be true
end

And(/^I verify that the gray banner on top has a row with the following order$/) do |table|
  i = 4
  j = 0
  key = "option"
  loop do 
  	(@browser.banner[i].text == table.hashes[j][key]).should be true 
  	i += 1
  	j += 1
  	break if i > 11
  end 
end	
	
Then("I verify that todays date is indicated in the following format: Dia, dd de mes de yyyy") do
	#@browser.date == "--, -- de --- de ----"
	(Time.new('%A, %d DE %B DE %Y') == @browser.date.text).should be true
	@browser.close
end
