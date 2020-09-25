#Test Case 6 – Get page title after searching with Google.com

require "selenium-webdriver"
require "webdrivers"

gpage_itms = Selenium::WebDriver.for :chrome

#Navigate to the specific website
gpage_itms.get ("http://google.co.uk")

#Maximize the browser's size
gpage_itms.manage.window.maximize

#Input value into search box
search_box = gpage_itms.find_element(class:"gLFyf")

#Send value into search box
search_box.send_keys ("iTMS Coaching")

#Click submit
search_box.submit

#Get the title after searching 
result = gpage_itms.title

#Show the result
puts "The 'get title' after searching 'iTMS Coaching' is: " + "#{result}"