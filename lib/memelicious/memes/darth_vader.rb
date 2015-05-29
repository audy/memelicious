module Memelicious
  class DarthVader < Meme
    matcher /I find your lack of (.*) disturbing/i

    should_match "I find your lack of tests disturbing"
    and_return "tests"

    should_not_match "I find sandwiches disturbing"
  end
end
