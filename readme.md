# Memelicious

[![Build
Status](https://travis-ci.org/audy/memelicious.svg?branch=master)](https://travis-ci.org/audy/memelicious)

Identify and parse internet "memes" in Ruby. The Ruby gem formely known as
memetron (I had to change the name because some meanie stole the gem on
RubyGems.org).

## Installation

`gem install memelicious`

or add to your `Gemfile`:

```ruby
gem 'memelicious'
```

## How

```ruby
require 'memelicious'

Memelicious::Matcher.match('A wild Ruby library appears')
# => [Memelicious::Pokemon, 'Ruby Library']
```

## Define memes using the DSL

```ruby

module Memelicious
  class SeanBean < Meme
    # define meme as a regular expression
    matcher /Prepare yourself,? (.*) are coming/i
    
    # provide some test cases
    should_match "prepare yourself, the automatically generated memes are coming"
    and_return "the automatically generated memes"

    should_not_match "this isn't an example of the Sean Bean meme"
  end
end
```

## Contributing Memes

Submit a pull request with your meme and at least one positive example.

Plz test thusly: `bundle exec rspec`.

## Why?

For the lulz.

<kbd>boop</kbd>
