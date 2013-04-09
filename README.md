# Shutterstock

A gem for interfacing with the shutterstock API. See the documentation
for more info http://api.shutterstock.com/

## Installation

Add this line to your application's Gemfile:

    gem 'shutterstock'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install shutterstock

## Usage

Add your config settings to an initializer, such as
config/initializers/shutterstock.rb

```ruby
Shutterstock.configure do |config|
  config.username = 'xxx'
  config.password = 'xxx'
end
```

Currently this gem only supports searching for images. Usage:

```ruby
client = Shutterstock::Client.new
trees = client.search('tree')
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
