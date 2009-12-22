#Cucumber::Rails.use_transactional_fixtures
#Cucumber::Rails.bypass_rescue # Comment out this line if you want Rails own error handling 

Webrat.configure do |config|
  config.mode = :rails
end
# (e.g. rescue_action_in_public / rescue_responses / rescue_from)


Cucumber::Rails::World.use_transactional_fixtures = false
require 'database_cleaner'
After do
  # Truncate the data from the minerva_test database tables listed below
  ActiveRecord::Base.establish_connection('minerva_test')
  DatabaseCleaner.clean_with :truncation, {:only => %w[customer]}
  
  # Truncate all the data from the test database
  ActiveRecord::Base.establish_connection(ENV['RAILS_ENV'])
  DatabaseCleaner.clean_with :truncation
end
