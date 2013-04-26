# EasyConfig [![Build Status](https://secure.travis-ci.org/apeacox/easy_config.png)](http://travis-ci.org/apeacox/easy_config)

A simple gem to store custom app settings the easy way. It can be used in any
application, but a Rails generator is provided too.

## Installation

Add this line to your application's Gemfile:

```gem 'easy_config'```

And then execute:

```$ bundle install```

Or install it yourself as:

```$ gem install likes_tracker```

## Rails support

EasyConfig provides a generator to create an initializer in ```config/initializers/easy_config.rb``` and a sample config in ```config/easy_config.yml```.

```rails generate easy_config:install```

### Dependencies

No dependencies, just plain Ruby and its standard library.

## Usage

EasyConfig loads a YAML file (with eventual ERB tags, so you can use ```ENV``` variables.
Given a YAML file with a bunch of keys:

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

  # Retuns a nested object
  MyConfig.baz # => <#EasyConfig::DeepStruct>

  # Access a nested key
  MyConfig.baz.nested # => 2

  # Returns an Hash
  MyConfig.baz.to_h # => {foo: {bar: 1, env: ..., baz: {nested: 2} }}

```

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
