# Memetron 5000

An attempt to replace Reddit with regular expressions.

```ruby
require 'lib/memetron'

matcher = Memetron::Matcher.new

matcher.match("North Korea is Best Korea") #=> :is_best

matcher.parse("North Korea is Best Korea") #=> ['North', 'Korea', 'Korea']
```
