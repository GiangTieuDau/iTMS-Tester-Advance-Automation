#Test Case 3 - Open Google.comand Print it's Page title
require 'selenium-webdriver'
require 'webdrivers'

verify_title = Selenium::WebDriver.for :chrome

#Navigate to the specific website
verify_title.get ("https://google.com")

#Maximize the browser' size
verify_title.manage.window.maximize
sleep 2

#Code to vertify title
result=verify_title.title

#print the result out
puts 'the page title after "get title" is ' + "#{result}"

verify_title.quit