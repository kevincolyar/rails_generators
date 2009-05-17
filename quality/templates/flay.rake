require 'flay'

namespace :quality do 
  desc 'Analyze for code duplication'
  task :flay do 
    threshold = 25
    flay = Flay.new({:fuzzy => false, :verbose => false, :mass => threshold})
    flay.process(*Flay.expand_dirs_to_files(['app']))
    flay.report
    raise "#{flay.masses.size} chunks of code have duplicate mass > #{threshold}" unless flay.masses.empty?
  end
end
