require 'selenium-webdriver'

class Create_profile

	def open_browser
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

	def enter_login_credential
		sleep 2
		@driver.find_element(css: '[name="username"]').send_keys('user@phptravels.com')
		@driver.find_element(css: '[name="password"]').send_keys('demouser')
	end

	def click_on_login
		@driver.find_element(css: '.btn.btn-primary.btn-lg.btn-block.loginbtn').click
		sleep 2
	end

	def click_on_myprofile
		@driver.find_element(css: 'body > div.body-inner > div.main-wrapper.scrollspy-action > div.container > div.container.mt25.offset-0 > div > div.row.mywishlist > div.col-12.col-md-4.col-lg-4.o2 > aside > nav > ul > li:nth-child(2) > a').click
		sleep 2
	end

	def enter_profile_details
		@driver.find_element(name: 'firstname').send_keys('Priyanka')
		sleep 2
		@driver.find_element(name: 'lastname').send_keys('yadav')
		sleep 2
		@driver.find_element(xpath: '//*[@id="profilefrm"]/div/div/div[2]/div[1]/div/input').send_keys('user@phptravels.com')
		sleep 2
		@driver.find_element(css: '#profilefrm > div > div > div:nth-child(2) > div:nth-child(2) > div > input').send_keys('demouser')
		sleep 2
		@driver.find_element(name: 'confirmpassword').send_keys('demouser')
		sleep 2
		@driver.find_element(name: 'address1').send_keys('Aswath nagar,banglore')
		sleep 2
		@driver.find_element(name: 'address2').send_keys('Nagawara')
		sleep 2
		@driver.find_element(css: '#profilefrm > div > div > div:nth-child(3) > div:nth-child(1) > div > input').send_keys('Banglore')
		sleep 2
		@driver.find_element(css: '#profilefrm > div > div > div:nth-child(3) > div:nth-child(2) > div > input').send_keys('Karnataka')
		sleep 2
		@driver.find_element(css: '#profilefrm > div > div > div:nth-child(4) > div:nth-child(1) > div > input').send_keys('52000')
		sleep 2
		@driver.find_element(css: '.chosen-container .chosen-single').click
		sleep 2
		@driver.find_element(class: 'chosen-search-input').send_keys('India')
		sleep 2
		@driver.find_element(css: '#profilefrm > div > div > div:nth-child(5) > div > div > input').send_keys('9712346578')
		sleep 2
	end

	def click_on_submit
		@driver.find_element(css: '.btn.btn-block.updateprofile.btn-primary').click
	end
		
end


	obj = Create_profile.new
	obj.open_browser
	obj.open_url
	obj.click_on_myaccount_dropdown
	obj.click_on_login_option
	obj.enter_login_credential
	obj.click_on_login
	obj.click_on_myprofile
	obj.enter_profile_details
	obj.click_on_submit

