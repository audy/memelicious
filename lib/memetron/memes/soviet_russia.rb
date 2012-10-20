module Memetron
  class SovietRussia < Meme
    matcher /in soviet russia,? (.*) you!?/i

    should_match 'in soviet russia, regular expressions match you'
    and_return 'regular expressions match'

    should_match 'in soviet russia, sentence exclaims you!'
    and_return 'sentence exclaims'
  end
end
