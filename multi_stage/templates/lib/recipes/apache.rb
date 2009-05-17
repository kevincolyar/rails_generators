namespace :apache do
  task :restart, :roles => [ :app, :db, :web ] do
    sudo "/etc/init.d/apache2 restart"
  end
end
