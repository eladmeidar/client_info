# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'client_info/version'

Gem::Specification.new do |spec|
  spec.name          = "client_info"
  spec.version       = ClientInfo::VERSION
  spec.authors       = ["Elad Meidar"]
  spec.email         = ["elad@eizesus.com"]
  spec.description   = "A beacon service endpoint for Riskified"
  spec.summary       = "A Restful endpoint for collecting realtime user data"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "thin"
  spec.add_development_dependency "httparty"
  
  spec.add_dependency "rack"
  spec.add_dependency "sinatra"
  spec.add_dependency "sinatra-contrib"
  spec.add_dependency "mongoid_heroku_stable"
  spec.add_dependency "bson_ext"
end
