#Test Case 2 - Open Google.comand maximize browser window.
require 'selenium-webdriver'
require 'webdrivers'

browser_size = Selenium::WebDriver.for :chrome

browser_size.navigate.to "https://google.com"

#Code to show the current size of browser
puts browser_size.manage.window.size

#Code to resize to a new dimension
browser_size.manage.window.resize_to(480,320)
puts browser_size.manage.window.size
sleep 2

#Code to maximize browser
browser_size.manage.window.maximize
puts browser_size.manage.window.size 
sleep 2

browser_size.close