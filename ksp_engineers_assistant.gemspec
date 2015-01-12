# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ksp_engineers_assistant/version'

Gem::Specification.new do |spec|
  spec.name          = "ksp_engineers_assistant"
  spec.version       = KspEngineersAssistant::VERSION
  spec.authors       = ["Sean Kell"]
  spec.email         = ["sean.michael.kell@gmail.com"]
  spec.summary       = %q{A tool for designing optimal rockets for sending frog men into space.}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "aruba"

  spec.add_dependency "thor"
end
