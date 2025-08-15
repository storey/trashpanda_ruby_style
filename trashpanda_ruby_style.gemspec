# frozen_string_literal: true

require_relative 'lib/trashpanda_ruby_style/version'

Gem::Specification.new do |spec|
  spec.name = 'trashpanda_ruby_style'
  spec.version = TrashPanda::Style::VERSION
  spec.authors = ['Grant Storey']
  spec.email = ['grantjstorey@gmail.com']

  spec.summary = 'Ruby styles for TrashPanda, Grant\'s Styles/Design System'
  spec.homepage = 'https://github.com/storey/trashpanda_ruby_style'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.4.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/storey/trashpanda_ruby_style'
  spec.metadata['changelog_uri'] = 'https://github.com/storey/trashpanda_ruby_style/blob/main/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines('\x0', chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.metadata['rubygems_mfa_required'] = 'true'
end
