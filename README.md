# Foundation Sass Rails

This gem adds only the Sass part of Foundation 5 to a Rails project.

The version of this gem is the same as Foundation.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'foundation-sass-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install foundation-sass-rails

## Basic Usage

Add the following line in your `application.css`

```scss
/*= require foundation
```

Or if you have `application.scss`


```scss
@import "foundation";
```

## Advance Usage

If you need the overrides foundation file.

```shell
rails generate foundation:overrides
```

That will create a file called `foundation_and_overrides.scss`. Now add the following line
to your `application.scss`


```scss
@import "foundation_and_overrides";
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/JessChavez/foundation-sass-rails.
This project is intended to be a safe, welcoming space for collaboration,
and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
