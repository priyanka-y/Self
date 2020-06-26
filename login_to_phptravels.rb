require 'selenium-webdriver'
require 'byebug'

class Phptravels

	def start_browser
		Selenium::WebDriver::Chrome.driver_path='/Users/garima/Downloads/chromedriver'
		@driver = Selenium::WebDriver.for :chrome
		@driver.manage.window.maximize
	end

	def open_url
		@driver.get"https://www.phptravels.net/home"
	end

	def click_on_myaccount_dropdown
		sleep 2
		@driver.find_elements(id: 'dropdownCurrency')[1].click
	end

	def click_on_login_option
		sleep 1
		@driver.find_element(css: '.dropdown-item.active.tr').click
	end

	def enter_login_credentials
		sleep 2
		@driver.find_element(css: '[name="username"]').send_keys('user@phptravels.com')
		@driver.find_element(css: '[name="password"]').send_keys('demouser')
	end

	def click_on_login
		@driver.find_element(css: '.btn.btn-primary.btn-lg.btn-block.loginbtn').click
		sleep 10
	end

    php = Phptravels.new
    php.start_browser
    php.open_url
    php.click_on_myaccount_dropdown
    php.click_on_login_option
    php.enter_login_credentials
    php.click_on_login

end

