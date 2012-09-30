module Memetron
  class HipsterKitty < Meme
    matcher /I liked (.*) before (.*)/i

    should_match 'I liked the concept of memes before the word was borrowed from Dawkins\' "The Selfish Gene" for use by the reddit community'
    and_return ["the concept of memes", "the word was borrowed from Dawkins' \"The Selfish Gene\" for use by the reddit community"]
  end
end
