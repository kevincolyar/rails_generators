class CucumberSetupGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.directory 'features'
      m.directory 'features/support'
      m.directory 'features/environments'
      m.directory 'features/step_definitions'
      m.file 'cucumber.yml', 'cucumber.yml'
      m.file 'features/support/env.rb', 'features/support/env.rb'
      m.file 'features/environments/webrat.rb', 'features/environments/webrat.rb'
      m.file 'features/environments/selenium.rb', 'features/environments/selenium.rb'
      m.file 'features/support/paths.rb', 'features/support/paths.rb'
      m.file 'features/step_definitions/webrat_steps.rb', 'features/step_definitions/webrat_steps.rb'
    end
  end
end
