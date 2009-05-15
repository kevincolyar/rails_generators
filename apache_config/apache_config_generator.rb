class ApacheConfigGenerator < Rails::Generator::NamedBase
  def manifest
    record do |m|
      m.directory "config/apache"
      m.template "config.erb" "config/apache/#{file_name}.erb"
    end
  end
end
