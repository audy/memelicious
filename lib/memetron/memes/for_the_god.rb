module Memetron
  class ForTheGod < Meme
    matcher /(.*) for the (.*) god/i

    should_match "memes for the meme god"
    and_return ["memes", "meme"]
  end
end
