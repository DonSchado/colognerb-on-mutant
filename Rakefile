require "active_support/core_ext"
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

desc 'Mutate all the things'
task mutant: :default do
  puts command = "mutant --rspec -I lib -r fancy_algorithm FancyAlgorithm"
  system("cov=false #{command}")
end
