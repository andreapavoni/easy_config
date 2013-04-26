# EasyConfig

A simple gem to store custom app settings the easiest way. It can be used in any
Ruby *or* Rails application.

## Installation

Add this line to your application's Gemfile:

```gem 'easy_config'```

then execute:

```$ bundle install```

or install it yourself as:

```$ gem install easy_config```

## Usage

EasyConfig loads a YAML file (with eventual ERB tags, so you can use ```ENV``` variables).
For example, given a YAML file with a bunch of keys:

```
foo:
  bar: 1
  env: <%= ENV['USER'] %>
  baz:
    nested: 2
```

Here's how to use it:

```
# Load yaml file
MyConfig = EasyConfig.load_yaml 'path_to_yaml.yml'

# Retrieve keys
MyConfig.bar # => 1
MyConfig.env # => YOUR_USERNAME

# Retuns a nested object (EasyConfig::DeepStruct is a modified version of Ruby's OpenStruct)
MyConfig.baz # => <#EasyConfig::DeepStruct>

# Access a nested key
MyConfig.baz.nested # => 2

# Returns an Hash
MyConfig.to_h # => {foo: {bar: 1, env: ..., baz: {nested: 2} }}

```

## Rails support

EasyConfig has built-in support for Rails. It provides a generator to create an initializer and a sample config:

* run the generator

  ```rails generate easy_config:install```
* edit the sample configuration in ```config/easy_config.yml```

You might want to modify ```config/initializers/easy_config.rb``` to choose another name for the object that should store the settings.
(default name is ```EConfig```), or add additional logic. No problem, this is just a *decent default* for the lazy.

## Contributing

1. Fork it!
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

### Testing

* clone this repo
* run `bundle install`
* run `rake spec`


## License
Copyright (c) 2013 Andrea Pavoni http://andreapavoni.com
