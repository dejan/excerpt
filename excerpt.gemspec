# -*- encoding: utf-8 -*-
Gem::Specification.new do |gem|
  gem.authors       = ["Dejan Simic"]
  gem.email         = ["desimic@gmail.com"]
  gem.description   = %q{Extracts portion of some input content like String, file, uri, ...}
  gem.summary       = %q{Extracts portion of some input content like String, file, uri, ...}
  gem.homepage      = "https://github.com/dejan/excerpt"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "excerpt"
  gem.require_paths = ["lib"]
  gem.version       = "0.0.1"
end
