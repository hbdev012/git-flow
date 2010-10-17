# -*- encoding: utf-8 -*-
$:.unshift File.expand_path("../lib", __FILE__)
require "git-flow/version"

Gem::Specification.new do |s|
  s.name        = "git-flow"
  s.version     = Git::Flow::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Brian V. hughes"]
  s.email       = ["brianvh@mac.com"]
  s.homepage    = "http://rubygems.org/gems/git-flow"
  s.summary     = "#{s.name}-#{s.version}"
  s.description = %q{Intelligent git-based workflow for your projects.}

  s.required_rubygems_version = ">= 1.3.7"
  s.rubyforge_project = "git-flow"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'grit', '~> 2.3.0'
  s.add_dependency 'thor', '~> 0.14.2'

  s.add_development_dependency 'bundler', '~> 1.0.0'
  s.add_development_dependency 'rspec', '~> 2.0.0'
  s.add_development_dependency 'cucumber', '~> 0.9.0'
  s.add_development_dependency 'aruba'
end
