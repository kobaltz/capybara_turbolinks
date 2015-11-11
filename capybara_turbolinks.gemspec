# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capybara_turbolinks/version'

Gem::Specification.new do |spec|
  spec.name          = "capybara_turbolinks"
  spec.version       = CapybaraTurbolinks::VERSION
  spec.authors       = ["Brendan Asselstine"]
  spec.email         = ["mail.asselstine@gmail.com"]

  spec.summary       = %q{Extends Capybara to elegantly handle Turbolinks}
  spec.description   = %q{This gem will help you ensure that your Capybara tests wait for Turbolinks to finish page loads.}
  spec.homepage      = "http://github.com/Loft47/capybara_turbolinks" 
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "capybara", ">= 2.4" 

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
