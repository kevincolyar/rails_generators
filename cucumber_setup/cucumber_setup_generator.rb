class CucumberSetupGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.directory 'features'
      m.directory 'features/support'
      m.directory 'features/plain'
      m.directory 'features/enhanced'
      m.file 'cucumber.yml', 'cucumber.yml'
      m.file 'features/support/env.rb', 'features/support/env.rb'
      m.file 'features/support/plain.rb', 'features/support/plain.rb'
      m.file 'features/support/enhanced.rb', 'features/support/enhanced.rb'
    end
  end
end
