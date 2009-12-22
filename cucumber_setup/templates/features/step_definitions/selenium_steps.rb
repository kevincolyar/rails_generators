require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

Then /^I should see "([^\"]*)" in "([^\"]*)"$/ do |text, selector|
  selenium.wait_for_condition('selenium.browserbot.getCurrentWindow().jQuery.active == 0', $max_selenium_timeout)
  response_body.should have_tag(selector, /#{Regexp.escape(text)}/)
end

