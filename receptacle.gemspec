# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "receptacle/version"

Gem::Specification.new do |spec|
  spec.name = "receptacle"
  spec.version = Receptacle::VERSION
  spec.authors = ["Andreas Eger"]
  spec.email = ["dev@eger-andreas.de"]

  spec.summary = "repository pattern"
  spec.description = "provides functionality for the repository or strategy pattern"
  spec.homepage = "https://github.com/andreaseger/receptacle"
  spec.license = "MIT"

  spec.required_ruby_version = if RUBY_ENGINE == "jruby"
                                 ">= 2.6"
                               else
                                 ">= 2.7"
                               end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 1.13", "< 3"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.11"
  spec.add_development_dependency "rspec_junit_formatter"
  spec.add_development_dependency "rt_rubocop_defaults", "~> 2.4"
  spec.add_development_dependency "rubocop", "~> 1.37"
  spec.add_development_dependency "rubocop-rspec", "~> 2.14"
  spec.add_development_dependency "rubocop_runner", "~> 2.2"
  spec.add_development_dependency "simplecov", "~> 0.13"

  spec.metadata["rubygems_mfa_required"] = "true"
end
