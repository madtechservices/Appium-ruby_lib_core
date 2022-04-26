# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'appium_lib_core/version'

Gem::Specification.new do |spec|
  spec.required_ruby_version = '>= 2.6'

  spec.name          = 'appium_lib_core'
  spec.version       = Appium::Core::VERSION
  spec.authors       = ['Kazuaki MATSUO']
  spec.email         = ['fly.49.89.over@gmail.com']

  spec.summary       = %q{Minimal Ruby library for Appium.}
  spec.description   = %q{Minimal Ruby library for Appium.}
  spec.homepage      = 'https://github.com/appium/ruby_lib_core/'
  spec.license       = 'Apache-2.0'
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{(^(doc|docs|test|spec|features|ci-jobs|.github|script)/|release_notes.md|.gitignore|azure-pipelines.yml|.rubocop.yml)})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'selenium-webdriver', '~> 4.0'
  spec.add_runtime_dependency 'faye-websocket', '~> 0.11.0'

  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'yard', '~> 0.9.11'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'minitest-reporters', '~> 1.1'
  spec.add_development_dependency 'webmock', '~> 3.14.0'
  spec.add_development_dependency 'rubocop', '1.28.2'
  spec.add_development_dependency 'appium_thor', '~> 1.0'
  spec.add_development_dependency 'parallel_tests'
  spec.add_development_dependency 'simplecov'
end
