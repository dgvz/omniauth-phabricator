# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/phabricator/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-phabricator"
  spec.version       = Omniauth::Phabricator::VERSION
  spec.authors       = ["Dylan Griffith"]
  spec.email         = ["dyl.griffith@gmail.com"]

  spec.summary       = %q{omniauth adapter for phabricator}
  spec.description   = %q{omniauth adapter for phabricator}
  spec.homepage      = "https://github.com/dgvz/omniauth-phabricator"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "omniauth-oauth2", "~> 1.3"

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
