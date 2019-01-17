require 'watir'

class BrowserContainer
  	def initialize(browser)
      @driver = browser
      @driver.window.maximize
    end
end

class Clarin < BrowserContainer

	def open_page
      @driver.goto('https://www.clarin.com/')
    end

    def temperatura
      @driver.span(class: 'temperatura')
    end

    def banner
      @driver.ul(class: ["nav", "navbar-nav"])
    end
   
    def date
   	   @driver.li(class: 'date').p
   	end

    def close
      @driver.close
    end
end