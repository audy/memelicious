# Memetron

Identify and parse internet "memes" in Ruby

## How

```ruby
require 'lib/memetron'

matcher = Memetron::Matcher.new

matcher.match("North Korea is Best Korea") #=> :is_best

matcher.parse("Wrote a Ruby library, better drink my own piss") #=> ["Wrote a Ruby library,"]

matcher.match_and_parse("I can has meme parsed?") #=> [:i_can_haz, ["meme parsed?"]]
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
