# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "marskal/bootstrap4/generators/version"

Gem::Specification.new do |spec|
  spec.name          = "marskal-bootstrap4-generators"
  spec.version       = Marskal::Bootstrap4::Generators::VERSION
  spec.authors       = ["Mike Urban"]
  spec.email         = ["mike@marskalgroup.com"]
  spec.summary       = %q{marskal-bootstrap-generators provides Twitter Bootstrap4 generators for Rails 4}
  spec.description   = %q{marskal-bootstrap-generators provides Twitter Bootstrap4 generators for Rails 4 Checkout http://getbootstrap.com.}
  spec.homepage      = "https://github.com/MarskalGroup/marskal-bootstrap4-generators"
  spec.license       = "MIT"

  spec.rubyforge_project = "marskal-bootstrap4-generators"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.12', '>= 1.12.4'
  spec.add_development_dependency 'rake', '~> 11.1', '>= 11.1.2'

  spec.add_dependency 'railties', '~> 4.2', '>= 4.2.6'
  spec.add_dependency 'bootstrap', '~> 4.0.0.alpha3'
  spec.add_dependency 'sass-rails', '~> 5.0', '>= 5.0.4'
end
