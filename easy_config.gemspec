$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "easy_config/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "easy_config"
  s.version     = EasyConfig::VERSION
  s.authors     = ["Andrea Pavoni"]
  s.email       = ["andrea.pavoni@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "EasyConfig."
  s.description = "TODO: Description of EasyConfig."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

end
