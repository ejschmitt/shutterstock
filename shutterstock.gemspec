# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shutterstock/version'

Gem::Specification.new do |gem|
  gem.name          = "shutterstock"
  gem.version       = Shutterstock::VERSION
  gem.authors       = ["Erick Schmitt"]
  gem.email         = ["ejschmitt@gmail.com"]
  gem.description   = %q{A gem for interfacing with the shutterstock API}
  gem.summary       = %q{Shutterstock API gem}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
