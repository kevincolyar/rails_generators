class QualityGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.directory "lib/tasks/quality"
      ['flay', 'flog', 'roodi', 'quality'].each do |f| 
        m.file "#{f}.rake", "lib/tasks/quality/#{f}.rake"
      end
    end
  end
end
