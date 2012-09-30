# Memetron

Identify and parse internet "memes" in Ruby.

## How

```ruby
require 'memetron'

Memetron::Matcher.match('A wild Ruby library appears')
# => [Memetron::Pokemon, 'Ruby Library']
```

## Make your own meme using the DSL

```ruby

module Memetron
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

## Why?

For the lulz.
