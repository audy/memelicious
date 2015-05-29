module Memetron
  class Fry < Meme
    matcher /(can'?t tell|not sure) if (.+) or (.+)/i

    should_match 'not sure if test passing or spec broken'
    and_return ["not sure", "test passing", "spec broken"] 
  end
end
