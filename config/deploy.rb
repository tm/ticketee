$:.unshift(File.expand_path('./lib', ENV['rvm_path']))
require 'rvm/capistrano'
require 'bundler/capistrano'

set :application, "ticketee"
set :repository,  "git://github.com/tm/ticketee.git"

set :scm, :git

role :web, "ticketee"                          # Your HTTP server, Apache/etc
role :app, "ticketee"                          # This may be the same as your
role :db,  "ticketee", :primary => true # This is where Rails migrations will run

set :port, 2200

set :user, "ticketeeapp.com"
set :deploy_to, "/home/ticketeeapp.com/apps/#{application}"
set :use_sudo, false
set :keep_releases, 5

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
 task :start do ; end
 task :stop do ; end
 task :restart, :roles => :app, :except => { :no_release => true } do
   run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
 end
end

task :symlink_database_yml do
 run "rm #{release_path}/config/database.yml"
 run "ln -sfn #{shared_path}/config/database.yml #{release_path}/config/database.yml"
end
after "bundle:install", "symlink_database_yml"
