class AppLayoutGenerator < Rails::Generator::NamedBase
  def manifest
    record do |m|
      #m.file src dest
      #m.template src.erb dest
      m.template "layout.html.erb", "app/views/layouts/#{file_name}.html.erb"
      m.template "layout.css", "public/stylesheets/#{file_name}.css"
    end
  end
end
