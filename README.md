# Thrift::Builder

Thrift::Builder helps you building Thrift objects.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'thrift-builder'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install thrift-builder

## Usage

Given the following thrift file:

```
enum Gender {
  MALE, FEMALE
}

struct PhoneNumber {
  1: string country_code
  2: string area_code
  3: string number
}

struct Person {
  1: string name
  2: PhoneNumber phone
  3: list<Person> children
  4: list<string> notes
  5: Gender gender
  6: i32 age
  7: set<i32> favorite_numbers
}
```

You can build a Person using the following code:

```ruby
require 'thrift/builder'

Thrift::Builder.new(Person).build(
  name: 'Andre Aizim Kelmanson',
  phone: { country_code: '55', area_code: '21', number: '99999-9999' },
  children: [ { name: 'Helena' } ],
  notes: [ 'works at investtools', 'created this gem!' ],
  gender: :male,
  age: 34,
  favorite_numbers: [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]
)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/investtools/thrift-builder. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

