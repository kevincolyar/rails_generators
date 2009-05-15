class ApacheConfigGenerator < Rails::Generator::NamedBase
  def manifest
    record do |m|
      m.directory "config/apache"
      m.directory "config/apache/ssl"
      m.template "virtual.config.erb", "config/apache/#{file_name}.conf.erb"
    end
  end
end
