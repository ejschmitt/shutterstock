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
  config.api_username = 'xxx'
  config.api_key = 'xxx'
  config.username = 'xxx'
  config.password = 'xxx'
  config.email = 'xxx@yyy.zzz'
end
```

Currently this gem only supports searching for images and
downloading/purchasing images.

Search usage:

```ruby
client = Shutterstock::Client.new
trees = client.search('tree')
```

Download/purchase usage:

```ruby
client = Shutterstock::Client.new
trees = client.subscriptions(subscription_id, image_id, size, format)
```

For size, you can use `Shutterstock::API::Subscriptions::SIZE.small`
(`medium`, `large`, and `vector` are other options)

For format, you can use `Shutterstock::API::Subscriptions::FORMAT.jpg`
(`eps` is the other option)

If there are additional query parameters you'd like to send to the API,
send an optional hash paramater to the methods. For example:

```ruby
options = {search_group: "photos"}
trees = client.search('tree', options)
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
