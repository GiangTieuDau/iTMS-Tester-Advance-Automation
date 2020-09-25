#Test Case 4 - Open Google.comand Print current url.
require "selenium-webdriver"
require "webdrivers"

cur_url = Selenium::WebDriver.for :chrome
cur_url.get "https://google.com"

#Maximize the browser's size
cur_url.manage.window.maximize
sleep 2

#Code to get current URL
result = cur_url.current_url

#Show the result
puts "The current URL is: " + "#{result}"