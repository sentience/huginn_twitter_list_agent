lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name = "huginn_twitter_list_agent"
  spec.version = "0.1"
  spec.authors = ["Kevin Yank"]
  spec.email = ["thatguy@kevinyank.com"]

  spec.summary = "The Twitter List Agent receives tweets from the users that belong to a Twitter list."
  # spec.description   = %q{Write a longer description or delete this line.}

  spec.homepage = "https://github.com/sentience/huginn_twitter_list_agent"

  spec.license = "MIT"

  spec.files = Dir["LICENSE.txt", "lib/**/*"]
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files = Dir["spec/**/*.rb"].reject { |f| f[%r{^spec/huginn}] }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency "huginn_agent"
end
