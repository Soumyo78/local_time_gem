# frozen_string_literal: true

require_relative "lib/local_time_gem/version"

Gem::Specification.new do |spec|
  spec.name = "local_time_gem"
  spec.version = LocalTimeGem::VERSION
  spec.authors = ["Soumyo78"]
  spec.email = ["soumyo78@yahoo.com"]

  spec.summary = "A gem to get the current local time and UTC offset for a given city name."
  spec.description = "This Ruby gem allows you to retrieve the current local time and UTC offset for a given city name using the 'timezone' gem."
  # spec.homepage = "TODO: Put your gem's website or public repo URL here."
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = "https://rubygems.org"
  spec.metadata["source_code_uri"] = "https://github.com/Soumyo78/local_time_gem"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.add_dependency 'tzinfo', '~> 2.0'
end
