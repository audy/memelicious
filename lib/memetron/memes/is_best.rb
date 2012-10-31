module Memetron
  class IsBest < Meme
    matcher /(\w+\b) (?<string>\w+\b) is best (\k<string>)/i

    should_match "North Korea is best Korea"
    and_return "Korea"

    should_not_match "North Korea is best country"
  end
end
