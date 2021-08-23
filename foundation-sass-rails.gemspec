
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'foundation/version'

Gem::Specification.new do |spec|
  spec.name          = 'foundation-sass-rails'
  spec.version       = Foundation::Sass::VERSION
  spec.authors       = ['Jesse Chavez']
  spec.email         = ['jesse.chavez.r@gmail.com']

  spec.summary       = %q{Foundation Sass}
  spec.description   = %q{This gem add only the Sass part of Foundation frontend framework to a Rails project.}
  spec.homepage      = 'https://github.com/JesseChavez/foundation-sass-rails'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'sass', ['>= 3.3.0', '< 3.5']

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
