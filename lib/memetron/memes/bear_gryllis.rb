module Memetron
  class BearGryllis < Meme
    matcher /(.*) better drink my own piss/i

    should_match "write a ruby library. better drink my own piss"
    and_return "write a ruby library."

    should_not_match "blah blah blah"
  end
end
