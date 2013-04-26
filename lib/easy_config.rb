require 'yaml'
require 'erb'
require 'easy_config/deep_struct'
require 'easy_config/version'

module EasyConfig

  def self.load_yaml(path, key = nil)
    result = YAML.load(ERB.new(File.read(path)).result)
    result = result[key.to_s] unless key.nil?

    DeepStruct.new result
  end

end
