require_relative './config/environment'

require "bundler/gem_tasks"
task :default => :spec

def reload!
  load './lib'
end

task :console do
  Pry.start
end
