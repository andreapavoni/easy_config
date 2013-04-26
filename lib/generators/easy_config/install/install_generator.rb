require 'rails/generators/base'

class InstallGenerator < ::Rails::Generators::Base #:nodoc:

  desc 'Generates EasyConfig files.'

  def self.source_root
    @_easy_config_source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'templates'))
  end

  def self.banner
    "rails generate easy_config:install"
  end

  def copy_files
    template 'easy_config.rb', 'config/initializers/easy_config.rb'
    template 'easy_config.yml', 'config/easy_config.yml'
  end

end
