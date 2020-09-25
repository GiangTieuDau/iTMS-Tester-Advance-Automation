#Test Case 7 – Input form

require 'selenium-webdriver'
require 'webdrivers'

ff = Selenium::WebDriver.for :chrome

ff.get ("https://itmscoaching.herokuapp.com/form")

ff.manage.window.maximize

frist_name = ff.find_element(css: '#first-name.form-control[placeholder="Enter first name"]')
frist_name.send_keys ("iTMS")

last_name = ff.find_element(css: '#last-name')
last_name.send_keys ("Coaching")

job_title = ff.find_element(css: '[placeholder = "Enter your job title"]')
job_title.send_keys ("QA")

radio_btn = ff.find_element(css: '[value="radio-button-1"]')
radio_btn.click

check_btn = ff.find_element(css: '#checkbox-2')
check_btn.click

select_year = ff.find_element(css: '#select-menu.form-control > [value="2"]')
select_year.click

chose_date = ff.find_element(css: '[data-provide="datepicker')
chose_date.send_keys ("27/10/2025")

submit_btn = ff.find_element(css: '.btn[role="button"]')
submit_btn.submit

sleep 2

ff.quit
