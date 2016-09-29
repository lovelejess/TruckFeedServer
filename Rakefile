require 'sinatra/activerecord/rake'
require 'bundler/gem_tasks'
require 'rspec/core/rake_task'


task :default => :spec
RSpec::Core::RakeTask.new

namespace :db do
  task :load_config do
    require './app'
  end
end

