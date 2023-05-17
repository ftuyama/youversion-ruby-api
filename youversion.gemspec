# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "youversion/version"

Gem::Specification.new do |spec|
  spec.name          = "youversion"
  spec.version       = YouVersion::VERSION
  spec.authors       = ["ftuyama"]
  spec.email         = ["felipe.tuyama@vigil.global"]
  spec.summary       = %q{A Ruby wrapper for the YouVersion API}
  spec.description   = %q{A Ruby wrapper for the YouVersion API}
  spec.homepage      = "https://github.com/ftuyama/youversion-ruby-api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.3.7"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'erubis', '~> 2.7.0'
  spec.add_development_dependency "json-schema"
  spec.add_development_dependency "pry"

  spec.add_runtime_dependency "faraday"
  spec.add_runtime_dependency "faraday_middleware"
  spec.add_runtime_dependency "multi_json"
  spec.add_runtime_dependency "faye-websocket"
end
