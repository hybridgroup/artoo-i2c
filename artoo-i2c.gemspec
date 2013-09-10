# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "artoo-i2c/version"

Gem::Specification.new do |s|
  s.name        = "artoo-i2c"
  s.version     = Artoo::I2c::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Your name here"]
  s.email       = ["your email here"]
  s.homepage    = "Your homepage here"
  s.summary     = %q{Artoo adaptor and driver for I2c}
  s.description = %q{Artoo adaptor and driver for I2c}

  s.rubyforge_project = "artoo-i2c"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'artoo', '~> 1.1.0.pre'
  # TODO: add your development dependencies here
  # EXAMPLE:
  # s.add_development_dependency 'minitest', '~> 5.0'
  # s.add_development_dependency 'minitest-happy'
  # s.add_development_dependency 'mocha', '~> 0.14.0'
end
