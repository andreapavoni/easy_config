require 'easy_config'

file = File.read("#{Rails.root}/config/easy_config.yml")

EConfig = EasyConfig.load_yaml file, Rails.env
