$:.unshift File.expand_path('..', __FILE__)
$:.unshift File.expand_path('../../lib', __FILE__)

require 'fileutils'
require 'rubygems'
require 'git-flow'
require 'rspec'

Dir["#{File.expand_path('../support', __FILE__)}/*.rb"].each do |file|
  require file
end

RSpec.configure do |config|
  
end
