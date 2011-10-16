# Memetron 5000

Recognize common internet memes using regular expressions.

## How

```ruby
require 'lib/memetron'

matcher = Memetron::Matcher.new

matcher.match("North Korea is Best Korea") #=> :is_best

mather.parse("Wrote a Ruby library, better drink my own piss") #=> ["Wrote a Ruby library,"]
```

## Why?

For the lulz.