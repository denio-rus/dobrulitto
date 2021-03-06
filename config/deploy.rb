# config valid for current version and patch releases of Capistrano
lock "~> 3.11.1"

set :application, "dobrulitto"
set :repo_url, 'git@github.com:denio-rus/dobrulitto.git'

set :deploy_to, "/home/deployer/dobrulitto"
set :deploy_user, 'deployer'

# Default value for :linked_files is []
append :linked_files, "config/database.yml", 'config/master.key'

# Default value for linked_dirs is []
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system", "storage"

after 'deploy:publishing', 'unicorn:restart'