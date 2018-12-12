require 'watir'

class BrowserContainer
  	def initialize(browser)
      @driver = browser
    end
end

class Clarin < BrowserContainer

	def open_page
      @driver.goto('https://www.clarin.com/')
    end

    def buenosaires
      @driver.span(class: 'city')
    end

    def close
      @driver.close
    end
end