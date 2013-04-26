require 'easy_config'

path = File.join(Rails.root, "/config/easy_config.yml")

EConfig = EasyConfig.load_yaml path, Rails.env
