# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "browser/version"

Gem::Specification.new do |s|
  s.name        = "browser"
  s.version     = Browser::Version::STRING
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Nando Vieira"]
  s.email       = ["fnando.vieira@gmail.com"]
  s.homepage    = "http://github.com/fnando/browser"
  s.summary     = "Do some browser detection with Ruby."
  s.description = s.summary

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "actionpack"
  s.add_development_dependency "rake"
  s.add_development_dependency "rdoc"
  s.add_development_dependency "pry-meta"
  s.add_development_dependency "awesome_print"
  s.add_development_dependency "rails", ">= 3.2.13"
  s.add_development_dependency "rack-test"
end
