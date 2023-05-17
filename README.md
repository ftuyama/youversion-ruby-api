# YouVersion Private Ruby API

A Ruby wrapper for the YouVersion Private API

## Installation

Add this line to your application's Gemfile:

    gem 'youversion'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install youversion

## Usage

```ruby
require "youversion"

YouVersion.configure do |config|
  config.token = "YOUR_TOKEN"
end

YouVersion.auth_test
```

## Examples

[https://github.com/ftuyama/youversion-ruby-api/tree/dev/examples](https://github.com/ftuyama/youversion-ruby-api/tree/dev/examples)

## Contributing

1. Fork it ( https://github.com/ftuyama/youversion-ruby-api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
