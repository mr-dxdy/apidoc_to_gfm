# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'apidoc_to_gfm/version'

Gem::Specification.new do |spec|
  spec.name          = "apidoc_to_gfm"
  spec.version       = ApidocToGFM::VERSION
  spec.authors       = ["German Antsiferov"]
  spec.email         = ["dxdy@bk.ru"]

  spec.summary       = "An template for rspec_api_documentation"
  spec.description   = "The template supports GitLab Flavored Markdown (GFM)"
  spec.homepage      = "https://github.com/mr-dxdy/apidoc_to_gfm.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rspec_api_documentation", ">= 4.7.0"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
