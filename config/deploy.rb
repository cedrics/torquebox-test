require 'torquebox-capistrano-support'
require 'bundler/capistrano'

set :application, 'my app name'
set :scm, :git
set :repository, 'git@example.com:me/my_repo.git'
set :torquebox_home, '/home/vagrant/torquebox-3.0.0'

set :deploy_to, '/var/www/torquebox'
set :user, 'vagrant'
set :stages, ['vagrant']
set :default_stage, 'vagrant'
server 'default', :app, :web, :db, :primary => true
