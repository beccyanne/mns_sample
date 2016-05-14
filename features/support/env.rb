Bundler.require
require_relative '../../lib/pages/page_objects'
require_relative '../../lib/config'

include EnvConfig
include PageObjects

# The block below allows you to access capybara's default values.
Capybara.configure do |config|
	config.run_server = false
	config.default_max_wait_time = 5
end

# The block below set's up the driver and browser your tests will run.
Capybara.register_driver :selenium do |app|
  	Capybara::Selenium::Driver.new(app, browser: browser.to_sym)
  end
Capybara.default_driver = :selenium

def browser
  ENV['BROWSER'] || 'chrome'
end