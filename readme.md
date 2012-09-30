# Memetron

Identify and parse internet "memes" in Ruby

## How

```ruby
require 'memetron'

Memetron::Matcher.match('A wild Ruby library appears')
# => ['Ruby Library']


```

## Make your own meme using the awesome DSl

```ruby

module Memetron
  class SeanBean < Meme
    matcher /Prepare yourself,? (.*) are coming/i
      
    should_match "prepare yourself, the automatically generated memes are coming"
    and_return "the automatically generated memes"
  end
end
```

## Why?

For the lulz.
