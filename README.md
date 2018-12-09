# ar-bigint

[![Travis-CI](https://travis-ci.org/fnando/ar-bigint.svg)](https://travis-ci.org/fnando/ar-bigint)
[![Code Climate](https://codeclimate.com/github/fnando/ar-bigint/badges/gpa.svg)](https://codeclimate.com/github/fnando/ar-bigint)
[![Test Coverage](https://codeclimate.com/github/fnando/ar-bigint/badges/coverage.svg)](https://codeclimate.com/github/fnando/ar-bigint/coverage)
[![Gem](https://img.shields.io/gem/v/ar-bigint.svg)](https://rubygems.org/gems/ar-bigint)
[![Gem](https://img.shields.io/gem/dt/ar-bigint.svg)](https://rubygems.org/gems/ar-bigint)

Make ActiveRecord's PostgreSQL adapter use `bigint` for integer columns (even if you specify `limit: 4`).

## Installation

Add this line to your application's Gemfile:

```ruby
gem "ar-bigint"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ar-bigint

## Usage

That's it! You don't have to configure anything.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/fnando/ar-bigint. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
