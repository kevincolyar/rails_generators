set :stages, %w(staging production)
require 'capistrano/ext/multistage'

set :default_stage, 'staging'

set :application, "<%= file_name %>"
set :repository,  "git@github.com:kevincolyar/#{application}.git"

set :scm, :git
set :deploy_via, :copy

role :app, "<%= file_name %>"
role :web, "<%= file_name %>"
role :cron, "<%= file_name %>"
role :db,  "<%= file_name %>", :primary => true
