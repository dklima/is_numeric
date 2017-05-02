# is_numerica

This gem just expand the String class to provide a method called 'numeric?' that verify if a string have a numeric value.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'is_numeric'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install is_numeric

## Usage

```
[1] pry(main)> require 'is_numeric'
=> true

[2] pry(main)> string1 = "Just a test"
=> "Just a test"
[3] pry(main)> string1.numeric?
=> false

[4] pry(main)> string2 = "10.1"
=> "10.1"
[5] pry(main)> string2.numeric?
=> true

[6] pry(main)> string3 = "1"
=> "1"
[7] pry(main)> string3.numeric?
=> true
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dklima/is_numeric.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

