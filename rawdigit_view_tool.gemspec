# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rawdigit_view_tool/version'

Gem::Specification.new do |spec|
  spec.name          = "rawdigit_view_tool"
  spec.version       = RawdigitViewTool::VERSION
  spec.authors       = ["Tom Ka Chun Cheung"]
  spec.email         = ["tomhk1123@gmail.com"]

  spec.summary       = %q{Various methods that are common among rawDigit application}
  spec.description   = %q{Generate HTML data for rawDigit web application}
  spec.homepage      = "http://rawdigit.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
