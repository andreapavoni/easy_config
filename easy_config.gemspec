$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "easy_config/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "easy_configs"
  s.description     = "Store Ruby or Rails app settings in the easiest way."
  s.summary = "Store custom Ruby or Rails app settings in the easiest way."
  s.version     = EasyConfig::VERSION

  s.authors     = ["Andrea Pavoni"]
  s.email       = ["andrea.pavoni@gmail.com"]
  s.homepage    = "http://github.com/apeacox/easy_config"

  s.require_paths = ["lib"]
  s.files = `git ls-files`.split($\)
  s.test_files = Dir["spec/**/*"]

end
