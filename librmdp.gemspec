# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'majordomo/version'

Gem::Specification.new do |spec|
  spec.name          = 'librmdp'
  spec.version       = Majordomo::VERSION
  spec.authors       = ['Benoist']
  spec.email         = %w(benoist.claassen@gmail.com)
  spec.description   = %q{A ruby implementation of the ZeroMQ majordomo pattern v0.1}
  spec.summary       = %q{A ruby implementation of the ZeroMQ majordomo pattern v0.1}
  spec.homepage      = 'https://github.com/benoist/librmdp'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_dependency 'ffi-rzmq'
end
