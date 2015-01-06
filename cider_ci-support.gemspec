# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cider_ci/support/version'

Gem::Specification.new do |spec|
  spec.name          = 'cider_ci-support'
  spec.version       = Cider_CI::Support::VERSION
  spec.authors       = ['Thomas Schank']
  spec.email         = ['DrTom@schank.ch']
  spec.summary       = 'Cider-CI support for Ruby and Ruby on Rails projects'
  spec.description   = ''
  spec.homepage      = 'https://github.com/cider-ci/cider-ci_ruby-support'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(/^bin/) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)/)
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_runtime_dependency 'flay', '~> 2.5.0'
  spec.add_runtime_dependency 'flog', '~> 4.3.0'
  spec.add_runtime_dependency 'json_roa-client', '>= 1.0.0.pre.beta.2'
  spec.add_runtime_dependency 'mime-types'
  spec.add_runtime_dependency 'simplecov', '~> 0.9'
  spec.add_runtime_dependency 'thread', '= 0.1.4'
end
