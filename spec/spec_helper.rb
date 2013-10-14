unless ENV['cov'] == 'false'
  require 'simplecov'
  SimpleCov.start do
    add_filter "/spec/"
  end
end

require "rspec/pride"
require "fancy_algorithm"

RSpec.configure do |config|
  config.color = true
  config.order = 'random'
end

