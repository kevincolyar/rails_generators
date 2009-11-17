Webrat.configure do |config|
  config.mode = :selenium
  # Selenium defaults to using the selenium environment. Use the following to override this.
  # config.application_environment = :test
end

# Rails 2.2+ and Sessions
# When running Selenium with Rails 2.3.2 (and this appears to be true for 2.2 as well) sessions did not work.
# They were being saved, but then were lost upon reload. 
# Adding the following to the selenium environment file fixed this problem:
config.action_controller.session = { :session_http_only => false }

# this is necessary to have webrat "wait_for" the response body to be available
# when writing steps that match against the response body returned by selenium
World(Webrat::Selenium::Matchers)

Before do
  # truncate your tables here, since you can't use transactional fixtures*
end
