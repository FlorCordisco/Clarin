require 'watir'

Given("I go to https://www.clarin.com/") do
	@browser = Clarin.new(Watir::Browser.new)
	@browser.open_page
	sleep 2
end

And(/^I verify that "([^"]*)" is above the temperature$/) do |ciudad|
	puts (@browser.buenosaires == ciudad).should be true
end

And("I verify that the gray banner on top has a row with the following order: ULTIMAS NOTICIAS - POLITICA - MUNDO - SOCIEDAD - POLICIALES - DEPORTES - ESPECTACULOS - CLASIFICADOS") do

end	
	
Then("I verify that todays date is indicated in the following format: Dia, dd de mes de yyyy") do

	@browser.close
end
