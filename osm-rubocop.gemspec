lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'osm/rubocop/version'

Gem::Specification.new do |spec|
  spec.name = 'osm-rubocop'
  spec.version = Osm::Rubocop::VERSION
  spec.authors = ['Isaac Betesh']
  spec.email = ['ibetesh@on-site.com']

  spec.summary = 'OnSite Ruby coding conventions.'
  spec.homepage = 'https://github.com/on-site/osm-rubocop'
  spec.license = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(/^(test|spec|features)\//)
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(/^exe\//) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rubocop', '0.67.2'
  spec.add_dependency 'rubocop-performance', '1.1.0'
  spec.add_dependency 'rubocop-rspec', '1.32.0'
  spec.add_development_dependency 'bundler', '>= 1.16'
  spec.add_development_dependency 'rake', '~> 12.0'
end
