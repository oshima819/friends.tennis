# frozen_string_literal: true

lock '3.8.0'

# set :repo_url, 'git@github.com:oshima819/MastodonTennisServer.git'
set :repo_url, ENV.fetch('REPO', 'git@github.com:oshima819/MastodonTennisServer.git')
set :branch, ENV.fetch('BRANCH', 'master')

set :application, 'mastodon'
set :deploy_to, '/home/ubuntu/deploy'
set :rbenv_type, :user
set :rbenv_ruby, File.read('.ruby-version').strip
set :migration_role, :app

append :linked_files, '.env.production', 'public/robots.txt'
append :linked_dirs, 'vendor/bundle', 'node_modules', 'public/system'
