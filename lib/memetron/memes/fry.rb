module Memetron
  class Fry < Meme
    matcher /(can'?t tell|not sure) if (.+) or (.+)/i

    should_match 'cant tell if test passing or spec broken'
    should_match 'not sure if test passing or spec broken'
  end
end
