#Cucumber::Rails.use_transactional_fixtures
#Cucumber::Rails.bypass_rescue # Comment out this line if you want Rails own error handling 

Webrat.configure do |config|
  config.mode = :rails
end
# (e.g. rescue_action_in_public / rescue_responses / rescue_from)
