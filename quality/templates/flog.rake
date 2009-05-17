require 'flog'

namespace :quality do 

  desc "Analyze for code complexity"
  task :flog do 
    flog = Flog.new
    flog.flog_files ['app']
    threshold = 40

    bad_methods = flog.totals.select do |name, score|
      score > threshold
    end

    bad_methods.sort {|a,b| a[1] <=> b[1] }.each do |name, score|
      puts "%8.1f: %s" % [score, name]
    end

    raise "#{bad_methods.size} methods have a flog complexity > #{threshold}" unless bad_methods.empty?
  end

end

