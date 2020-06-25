# frozen_string_literal: true

require_relative 'lib/storm_trooper/version'

Gem::Specification.new do |spec|
  spec.name          = 'storm_trooper'
  spec.version       = StormTrooper::VERSION
  spec.authors       = ['CE']
  spec.email         = ['archmagece@gmail.com']

  spec.summary       = '인프라를 찍어낸다'
  spec.description   = '인프라를 찍어냅니다'
  spec.homepage      = 'https://github.com/ScriptonBasestar-devops/storm_trooper-cli'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['allowed_push_host'] = 'https://rubygems.pkg.github.com/ScriptonBasestar-devops'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/ScriptonBasestar-devops/storm_trooper-cli'
  spec.metadata['changelog_uri'] = 'https://github.com/ScriptonBasestar-devops/storm_trooper-cli/blob/master/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'git', '~> 1.7'
  spec.add_dependency 'thor', '~> 1.0'

  spec.add_development_dependency 'codecov'
  spec.add_development_dependency 'simplecov'
end
