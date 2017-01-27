# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'thrift/builder/version'

Gem::Specification.new do |spec|
  spec.name          = "thrift-builder"
  spec.version       = Thrift::Builder::VERSION
  spec.authors       = ["André Aizim Kelmanson"]
  spec.email         = ["akelmanson@gmail.com"]

  spec.summary       = %q{Thrift::Builder helps you building Thrift objects}
  spec.description   = %q{Build your Thrift objects using just hashes and arrays.}
  spec.homepage      = "https://github.com/investtools/thrift-builder"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "thrift"
end
