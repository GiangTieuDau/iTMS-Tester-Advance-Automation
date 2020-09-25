#Test Case 1 - Launch Browser and Open Google.Com
#.
require "selenium-webdriver"
require "webdrivers"

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://google.com"
#driver.get "https://google.com"

driver.close