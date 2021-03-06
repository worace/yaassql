# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yaasql/version'

Gem::Specification.new do |spec|
  spec.name          = "yaasql"
  spec.version       = Yaasql::VERSION
  spec.authors       = ["Horace Williams"]
  spec.email         = ["horace@worace.works"]

  spec.summary       = "Simple SQL query-templating for ruby, a la https://github.com/krisajenkins/yesql."
  spec.description   = "Write db queries directly in SQL - no ORM or query-builder required. Include some conveniences around naming queries and providing arguments."
  spec.homepage      = "https://github.com/worace/yaasql"
  spec.license       = "MIT"
  spec.required_ruby_version = '>= 1.9.2'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "pg", "~> 0.18"
end
