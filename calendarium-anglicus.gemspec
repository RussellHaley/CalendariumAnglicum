# coding: utf-8
require_relative 'lib/calendarium-anglicus/version'

Gem::Specification.new do |spec|
  spec.name          = 'calendarium-anglicus'
  spec.version       = CalendariumAnglicus::VERSION
  spec.authors       = ['Russell Haley']
  spec.email         = ['russ.haley@gmail.com']

  spec.summary       = %q{Library computing liturgical calendar of the Czech Old Catholic Church}
  spec.homepage      = 'https://github.com/russellhaley/calendarium-anglicus'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'calendarium-romanum', '0.8.0'
end
