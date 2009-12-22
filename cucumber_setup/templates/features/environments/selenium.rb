require 'database_cleaner'
require 'database_cleaner/cucumber'

Webrat.configure do |config|
  config.mode = :selenium
  # Selenium defaults to using the selenium environment. Use the following to override this.
  config.application_environment = :test

 # config.application_address = "localhost"
 # config.application_port = "3001"

  #config.selenium_server_address = "localhost"
  #config.selenium_server_port = "4444"

#  config.selenium_browser_key = "*firefox"
end

# this is necessary to have webrat "wait_for" the response body to be available
# when writing steps that match against the response body returned by selenium
World(Webrat::Selenium::Matchers)

# This is needed for cucumber/selenium tests
Cucumber::Rails::World.use_transactional_fixtures = false

DatabaseCleaner.strategy = :truncation

Before do
  # truncate your tables here, since you can't use transactional fixtures*
  DatabaseCleaner.clean
end

# This is helpful when using the same cucumber steps with differing methods for selenium and normal webrat
def selenium_env?
  true
end

class Webrat::SeleniumSession
 
  # Selenium version of request_path
  def request_path
    selenium.get_location.gsub("http://localhost:3001", "")
  end
  
end
 
# Make the request_path method available to the steps
Webrat::Methods.delegate_to_session :request_path

