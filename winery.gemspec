# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'winery/version'

Gem::Specification.new do |spec|
  spec.name          = "winery"
  spec.version       = Winery::VERSION
  spec.authors       = ["Artyom Keydunov"]
  spec.email         = ["artyom.keydunov@gmail.com"]
  spec.summary       = %q{Generator for building APIs with Grape.}
  spec.description   = %q{Generator for building APIs with Grape.}
  spec.homepage      = "http://github.com/keydunov/winery"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_dependency 'thor'
end
