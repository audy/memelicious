# Memetron 5000

An attempt to replace Reddit with regular expressions.

Similar, but not related to, http://meme.nbcr.net/meme/

```ruby
require 'lib/memetron'
matcher = Memetron::Matcher.new
matcher.match("North Korea is Best Korea") #=> :is_best
```
