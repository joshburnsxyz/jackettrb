# frozen_string_literal: true

require_relative "lib/jackettrb/version"

Gem::Specification.new do |spec|
  spec.name = "jackettrb"
  spec.version = Jackettrb::VERSION
  spec.authors = ["Josh Burns"]
  spec.email = ["joshyburnss@gmail.com"]

  spec.summary = "Ruby library to provide an interface to Jackett API servers"
  spec.description = "Ruby library to provide an interface to Jackett API servers"
  spec.homepage = "https://github.com/joshburnsxyz/jackettrb"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rss", "~> 0.2.9"
end
