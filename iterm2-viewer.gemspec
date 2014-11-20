# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'iterm2/viewer/version'

Gem::Specification.new do |spec|
  spec.name          = 'iterm2-viewer'
  spec.version       = Iterm2::Viewer::VERSION
  spec.authors       = ['Andrey']
  spec.email         = ['andrey@antipov.me']
  spec.summary       = %q{Display media files in iTerm2.}
  spec.description   = %q{Display media files in terminal. iTerm2 is required}
  spec.homepage      = 'https://github.com/AndreyAntipov/iterm2-viewer'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'

  # runtime dependency
  spec.add_runtime_dependency 'mime-types'

  # docs
  spec.add_development_dependency 'yard'

  # code coverage
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'inch'

  # code metrics
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'reek'

  # tests
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'minitest-reporters'

  # automation
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-inch'
  spec.add_development_dependency 'guard-yard'
  spec.add_development_dependency 'guard-reek'
  spec.add_development_dependency 'guard-rubocop'
  spec.add_development_dependency 'guard-minitest'
  spec.add_development_dependency 'guard-bundler'
end
