lock "~> 3.16.0"

set :application, "planit"

set :repo_url, "git@github.com:akhatem/planit.git"

set :branch, "main"

set :deploy_to, "/home/deploy/#{fetch :application}"

set :rails_env, "production"

append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads', 'public/packs', 'node_modules'

set :keep_releases, 5

SSHKit.config.command_map[:cap] = "bundle exec cap"