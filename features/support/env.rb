require 'rubygems'
require 'selenium-webdriver'
require 'cucumber'

require 'allure-cucumber'

AllureCucumber.configure do |c|
  c.output_dir = "/output/dir"
end
Before do
  $driver = Selenium::WebDriver.for :firefox
  #$driver = Selenium::WebDriver.for :chrome
  $driver.get $mainurl
  $driver.manage.window.maximize
  $driver.manage.timeouts.implicit_wait = 3
  closepopup
end

#After do
#  $driver.quit
#end

#AfterStep do |scenario|
#  closepopup
#end

#$driver
#мышь
#окно
#тайминг
#бэк
#открыть
#отправить ключ