require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

task :environment do
  dbconfig = YAML::load(File.open('config/database.yml'))
  ActiveRecord::Base.establish_connection(config["db"]["development"])
end

