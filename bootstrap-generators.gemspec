# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bootstrap-generators/version"

Gem::Specification.new do |s|
  s.name        = "bootstrap-generators"
  s.version     = Bootstrap::Generators::VERSION
  s.authors     = ["Patricio Mac Adden"]
  s.email       = ["patriciomacadden@gmail.com"]
  s.homepage    = "http://github.com/patriciomacadden/bootstrap-generators"
  s.summary     = %q{This gem provides rails generators with twitter/bootstrap goodness.}
  s.description = %q{This gem provides rails generators with twitter/bootstrap goodness.}

  s.rubyforge_project = "bootstrap-generators"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
