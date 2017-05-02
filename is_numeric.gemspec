# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'is_numeric/version'

Gem::Specification.new do |spec|
  spec.name          = 'is_numeric'
  spec.version       = IsNumeric::VERSION
  spec.authors       = ['Daniel K Lima']
  spec.email         = ['dklima@gmail.com']

  spec.summary       = %q{Expand String class to provide a verification if a string is numeric}
  spec.description   = %q{Add the method 'numeric?' to String which will return true if the string have a numeric value}
  spec.homepage      = 'https://github.com/dklima/is_numeric'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org.
  # To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing
  # to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
end
