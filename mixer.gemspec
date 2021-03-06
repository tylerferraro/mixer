lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mixer/version'

Gem::Specification.new do |spec|
  spec.name          = 'mixer'
  spec.version       = Mixer::VERSION
  spec.authors       = ['Tyler Ferraro']
  spec.email         = ['tyler.ferraro@gmail.com']

  spec.summary       = 'Mixer REST API wrapper gem.'
  spec.description   = 'Mixer REST API wrapper gem.'
  spec.homepage      = 'https://github.com/tylerferraro/mixer'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.2.0'

  spec.add_dependency 'faraday'
  spec.add_dependency 'faraday_middleware'
  spec.add_dependency 'virtus'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.51.0'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'vcr'
end
