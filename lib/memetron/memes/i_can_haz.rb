module Memetron
  class ICanHaz < Meme
    matcher /I can ha[zs] (.*)/i

    should_match "I can has regular expressions?"
    and_return "regular expressions?"

    should_match "I can haz regular expressions?"
  end
end
