class CucumberSetupGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.directory 'features'
      m.directory 'features/support'
      m.directory 'features/plain'
      m.directory 'features/enhanced'
      m.directory 'features/environments'
      m.directory 'features/step_definitions'
      m.file 'cucumber.yml', 'cucumber.yml'
      m.file 'features/support/env.rb', 'features/support/env.rb'
      m.file 'features/environments/plain.rb', 'features/environments/plain.rb'
      m.file 'features/environments/enhanced.rb', 'features/environments/enhanced.rb'
      m.file 'features/support/paths.rb', 'features/support/paths.rb'
      m.file 'features/step_definitions/webrat_steps.rb', 'features/step_definitions/webrat_steps.rb'
    end
  end
end
