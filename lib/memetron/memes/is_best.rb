module Memetron
  class IsBest < Meme
    matcher /(\w+\b) (\w+\b) is best (\w+\b)/i

    should_match "North Korea is best Korea"
    and_return ['North', 'Korea', 'Korea']
  end
end
