module Memelicious
  class JimmyMcMillan < Meme
    matcher /(.*) is too damn high!/i

    should_match "the time I spend on stupid programming projects is too damn high!"
    and_return "the time I spend on stupid programming projects"
  end
end
