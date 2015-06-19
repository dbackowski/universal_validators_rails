# UniversalValidatorsRails [![Build Status](https://travis-ci.org/dbackowski/universal_validators_rails.svg?branch=master)](https://travis-ci.org/dbackowski/universal_validators_rails)

Rails validators for:

* date
* date_time
* ip address
* mac address

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'universal_validators_rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install universal_validators_rails

## Usage

```ruby
class User
  include ActiveModel::Validations

  attr_accessor :date, :date_time, :ip_address, :mac_address

  validates :date, date: true
  validates :date_time, date_time: true
  validates :ip_address, ip_address: { with_mask: true }
  validates :mac_address, mac_address: true
end

user = User.new
user.date = '2015-02-25'
user.date_time = '2015-02-25 12:33'
user.ip_address = '127.0.0.1/32'
user.mac_address = '00:0A:CD:00:CC:FE'
user.valid?
=> true
```

## Contributing

1. Fork it ( https://github.com/dbackowski/universal_validators_rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
