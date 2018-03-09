# Mixer
[![Build Status](https://travis-ci.org/tylerferraro/mixer.svg?branch=master)](https://travis-ci.org/tylerferraro/mixer) [![Maintainability](https://api.codeclimate.com/v1/badges/fdae37b40a359f2fec49/maintainability)](https://codeclimate.com/github/tylerferraro/mixer/maintainability) [![Test Coverage](https://api.codeclimate.com/v1/badges/fdae37b40a359f2fec49/test_coverage)](https://codeclimate.com/github/tylerferraro/mixer/test_coverage)

This gem wraps the [Mixer](https://mixer.com) API [https://dev.mixer.com/rest.html](https://dev.mixer.com/rest.html)

This is currently under development and is in Alpha stages. The instructions below are filler used to drive architecture and may not currently work.

## Installation

```ruby
gem install mixer
```

Using bundler:

```ruby
gem 'mixer'
```

## Usage

### Configure your client

```ruby
mixer = Mixer::Client.new(token: 'my_token')
```

### Query API

```ruby
# Returns array of achievement objects
achievements = mixer.achievements.all

# Returns specified channel
channel = mixer.channels.find(1)
```

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/tylerferraro/mixer](https://github.com/tylerferraro/mixer).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
