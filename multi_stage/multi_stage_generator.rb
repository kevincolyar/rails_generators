class MultiStageGenerator < Rails::Generator::NamedBase
  def manifest
    record do |m|
      # Copy capistrano files.
      m.file 'Capfile', 'Capfile'
      m.file 'config/deploy/production.rb', 'config/deploy/production.rb'
      m.file 'config/deploy/staging.rb', 'config/deploy/staging.rb'
      m.template 'config/deploy.rb', 'config/deploy.rb'

      # Copy recipe files.
      m.file 'lib/recipes/deploy.rb', 'lib/recipes/deploy.rb' 
      m.file 'lib/recipes/apache.rb', 'lib/recipes/apache.rb' 
    end
  end
end
