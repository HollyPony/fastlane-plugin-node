# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/node_js/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-node_js'
  spec.version       = Fastlane::NodeJs::VERSION
  spec.author        = 'Arthur Agombart'
  spec.email         = 'arthur.agombart@gmail.com'

  spec.summary       = 'Use nodejs / nvm to your project'
  spec.homepage      = 'https://github.com/HollyPony/fastlane-plugin-nodejs'
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # spec.add_dependency 'your-dependency', '~> 1.0.0'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'fastlane', '>= 1.111.0'
end
