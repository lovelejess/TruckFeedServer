require "sinatra/activerecord/rake"
require "bundler/gem_tasks"
require 'rspec/core/rake_task'


namespace :db do
  task :load_config do
    require "./app"
  end
end



RSpec::Core::RakeTask.new

task :default => :spec