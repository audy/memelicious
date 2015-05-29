module Memelicious
  class ICanHaz < Meme
    matcher /I can ha[zs] (.*)/i

    should_match "I can has regular expressions?"
    and_return "regular expressions?"
  end
end
