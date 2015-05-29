module Memelicious
  class Pokemon < Meme
    matcher /a wild (.+) appears/i

    should_match "A wild ruby library appears"
    and_return "ruby library"
  end
end
