# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'universal_validators_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "universal_validators_rails"
  spec.version       = UniversalValidatorsRails::VERSION
  spec.authors       = ["Damian Baćkowski"]
  spec.email         = ["dbackowski@artcom.pl"]

  spec.summary       = %q{Rails validators for: date, date_time, ip address, mac address}
  spec.description   = %q{Rails validators for: date, date_time, ip address, mac address}
  spec.homepage      = "https://github.com/dbackowski/universal_validators_rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'universal_validators', '= 1.0.0', '= 1.0.0'
  spec.add_runtime_dependency 'activerecord', '>= 4.0.1', '< 6.0'
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.1"
end
