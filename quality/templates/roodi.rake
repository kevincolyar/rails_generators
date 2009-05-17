require 'roodi'
require 'roodi_task'
require 'metric_fu'

namespace :quality do 
  RoodiTask.new 'roodi', ['app/**/*.rb', 'lib/**/*.rb'], 'roodi.yml'
end

