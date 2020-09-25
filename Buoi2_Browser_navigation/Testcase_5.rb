require 'selenium-webdriver'
require 'webdrivers'

page_src = Selenium::WebDriver.for :chrome
page_src.get "http://google.com"

result = page_src.page_source

puts "The result is" + "#{result}"