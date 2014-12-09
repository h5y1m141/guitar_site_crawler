# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guitar_site_crawler/version'

Gem::Specification.new do |spec|
  spec.name          = "guitar_site_crawler"
  spec.version       = GuitarSiteCrawler::VERSION
  spec.authors       = ["HiroshiOyamada"]
  spec.email         = ["h5y1m141@gmail.com"]
  spec.summary       = %q{crawl used-guitar web site}
  spec.description   = %q{crawl used-guitar web site}
  spec.homepage      = "github.com/h5y1m141"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_runtime_dependency "nokogiri"
  spec.add_runtime_dependency "activerecord"
  spec.add_runtime_dependency "activerecord-import"
  spec.add_runtime_dependency "mysql2"
end
